local Game = {}

function Game:enter(previous_state)
    self.previous_state = previous_state

    -- states: OVERWORLD, BATTLE, SHOP, GAMEOVER
    self.state = "OVERWORLD"

    self.stage = Stage()

    self.world = World()
    self.stage:addChild(self.world)

    self.battle = nil

    self.max_followers = Kristal.getModOption("maxFollowers") or 10

    -- BEGIN SAVE FILE VARIABLES --

    self.party = {}
    for _,id in ipairs(Kristal.getModOption("party") or {"kris"}) do
        table.insert(self.party, Registry.getPartyMember(id))
    end

    self.inventory = {}
    for _,id in ipairs(Kristal.getModOption("inventory") or {}) do
        table.insert(self.inventory, Registry.getItem(id))
    end

    self.temp_followers = {}

    self.gold = 0
    self.xp = 0

    if Kristal.getModOption("map") then
        self.world:loadMap(Kristal.getModOption("map"))
    end

    -- END SAVE FILE VARIABLES --

    self.world:spawnParty()

    self.started = true
    self.lock_input = false

    if previous_state == Kristal.States["DarkTransition"] then
        self.started = false

        local px, py = self.world.player:getScreenPos()
        local kx, ky = previous_state.kris_sprite:localToScreenPos(previous_state.kris_width / 2, 0)

        previous_state.final_y = py / 2

        self.world.player:setScreenPos(kx, py)
        self.world.player.visible = false

        if not previous_state.kris_only and self.world.followers[1] then
            local sx, sy = previous_state.susie_sprite:localToScreenPos(previous_state.susie_width / 2, 0)

            self.world.followers[1]:setScreenPos(sx, py)
            self.world.followers[1].visible = false
        end
    elseif Kristal.getModOption("encounter") then
        self:encounter(Kristal.getModOption("encounter"), false)
    end

    self.fader_alpha = 0
    self.chapter = Kristal.getModOption("chapter") or 2

    self.music = Music()

    self.font = Assets.getFont("main")
    self.soul_blur = Assets.getTexture("ui/soul_blur")

    Kristal.modCall("init")
end

function Game:isLight()
    return self.world and self.world.light or false
end

function Game:gameOver(x, y)
    self.gameover_screenshot = love.graphics.newImage(SCREEN_CANVAS:newImageData())
    self.state = "GAMEOVER"
    if self.battle then
        self.battle:remove()
    end
    if self.world then
        self.world:remove()
    end
    self.soul = Sprite("player/heart")
    self.soul:setOrigin(0.5, 0.5)
    self.soul:setColor(1, 0, 0, 1)
    self.soul.x = x
    self.soul.y = y

    self.stage:addChild(self.soul)

    self.gameover_timer = 0
    self.gameover_stage = 0
    self.fader_alpha = 0
    self.gameover_skipping = 0
    self.fade_white = false
end

function Game:updateGameOver(dt)
    self.gameover_timer = self.gameover_timer + DTMULT
    if (self.gameover_timer >= 30) and (self.gameover_stage == 0) then
        self.gameover_screenshot = nil
        self.gameover_stage = 1
    end
    if (self.gameover_timer >= 50) and (self.gameover_stage == 1) then
        Assets.playSound("snd_break1")
        self.soul:setSprite("player/heart_break")
        self.gameover_stage = 2
    end
    if (self.gameover_timer >= 90) and (self.gameover_stage == 2) then
        Assets.playSound("snd_break2")

        local shard_count = 6
        local x_position_table = {-2, 0, 2, 8, 10, 12}
        local y_position_table = {0, 3, 6}

        self.shards = {}
        for i = 1, shard_count do 
            local x_pos = x_position_table[((i - 1) % #x_position_table) + 1]
            local y_pos = y_position_table[((i - 1) % #y_position_table) + 1]
            local shard = Sprite("player/heart_shard", self.soul.x + x_pos, self.soul.y + y_pos)
            local direction = Utils.random(360)
            shard:setColor(self.soul:getColor())
            shard.speed_x = math.cos(direction) * 7
            shard.speed_y = math.sin(direction) * 7
            shard.gravity = 0.2
            shard:play(5/30)
            table.insert(self.shards, shard)
            self.stage:addChild(shard)
        end

        self.soul:remove()
        self.soul = nil
        self.gameover_stage = 3
    end
    if (self.gameover_timer >= 140) and (self.gameover_stage == 3) then
        self.fader_alpha = (self.gameover_timer - 140) / 10
        if self.fader_alpha >= 1 then
            for i = #self.shards, 1, -1 do
                self.shards[i]:remove()
            end
            self.shards = {}
            self.fader_alpha = 0
            self.gameover_stage = 4
        end
    end
    if (self.gameover_timer >= 150) and (self.gameover_stage == 4) then
        self.music:play("AUDIO_DEFEAT")
        self.gameover_text = Sprite("ui/gameover", 0, 40)
        self.gameover_text:setScale(2)
        self.gameover_alpha = 0
        self.stage:addChild(self.gameover_text)
        self.gameover_text:setColor(1, 1, 1, self.gameover_alpha)
        self.gameover_stage = 5
    end
    if (self.gameover_timer >= 180) and (self.gameover_stage == 5) then
        local options = {}
        for _, member in ipairs(self.party) do
            if member.gameover_message then
                table.insert(options, member)
            end
        end
        if #options == 0 then
            self.gameover_stage = 7
        else
            local member = Utils.pick(options)
            local voice = Registry.getActor(member.actor).text_sound or "default"
            self.gameover_lines = {}
            for _,dialogue in ipairs(member.gameover_message) do
                local full_line = "[speed:0.5][spacing:8][voice:"..voice.."]"
                local lines = Utils.split(dialogue, "\n")
                for i,line in ipairs(lines) do
                    if i > 1 then
                        full_line = full_line.."\n  "..line
                    else
                        full_line = full_line.."  "..line
                    end
                end
                table.insert(self.gameover_lines, full_line)
            end
            self.gameover_dialogue = DialogueText(self.gameover_lines[1], 50*2, 151*2, nil, nil, nil, "none")
            self.gameover_dialogue.line_offset = 14
            self.gameover_dialogue.skip_speed = true
            self.stage:addChild(self.gameover_dialogue)
            table.remove(self.gameover_lines, 1)
            self.gameover_stage = 6
        end
    end
    if (self.gameover_stage == 6) and Input.pressed("confirm") and (not self.gameover_dialogue:isTyping()) then
        if #self.gameover_lines > 0 then
            self.gameover_dialogue:setText(self.gameover_lines[1])
            self.gameover_dialogue.line_offset = 14
            table.remove(self.gameover_lines, 1)
        else
            self.gameover_dialogue:remove()
            self.gameover_stage = 7
        end
    end
    if (self.gameover_stage == 7) then
        self.gameover_stage = 8
        self.gameover_selected = 1
        self.gameover_fadebuffer = 10
        self.gameover_ideal_x = 80 + (self.font:getWidth("CONTINUE") / 4 - 10)
        self.gameover_ideal_y = 180
        self.gameover_heart_x = self.gameover_ideal_x
        self.gameover_heart_y = self.gameover_ideal_y
        self.gameover_choicer_done = false
    end

    if (self.gameover_stage == 8) then
        self.gameover_fadebuffer = self.gameover_fadebuffer - DTMULT

        if self.gameover_fadebuffer < 0 then
            if Input.pressed("left") then self.gameover_selected = 1 end
            if Input.pressed("right") then self.gameover_selected = 2 end
            if self.gameover_selected == 1 then
                self.gameover_ideal_x = 80   + (self.font:getWidth("CONTINUE") / 4 - 10)  --((string_width(NAME[CURX][CURY]) / 2) - 10)
                self.gameover_ideal_y = 180
            else
                self.gameover_ideal_x = 190  + (self.font:getWidth("GIVE UP") / 4 - 10)
                self.gameover_ideal_y = 180
            end

            if Input.pressed("confirm") then
                self.gameover_choicer_done = true
                self.music:stop()
                if self.gameover_selected == 1 then
                    self.gameover_stage = 9

                    self.gameover_timer = 0
                else
                    self.gameover_text:remove()
                    self.gameover_stage = 20

                    self.gameover_dialogue = DialogueText("[noskip][speed:0.5][spacing:8][voice:none] THEN THE WORLD[wait:30] \n WAS COVERED[wait:30] \n IN DARKNESS.", 60*2, 81*2, nil, nil, nil, "GONER")
                    self.gameover_dialogue.line_offset = 14
                    self.stage:addChild(self.gameover_dialogue)
                end
            end
        end
    end

    if (self.gameover_stage == 9) then
        if (self.gameover_timer >= 30) then
            self.gameover_timer = 0
            self.gameover_stage = 10
            local sound = Assets.newSound("snd_dtrans_lw")
            sound:play()
            self.fade_white = true
        end
    end

    if (self.gameover_stage == 10) then
        self.fade_white = true
        self.fader_alpha = self.fader_alpha + (0.01 * DTMULT)
        if self.gameover_timer >= 120 then
            self.gameover_stage = 11
            self:loadTemp()
        end
    end

    if (self.gameover_stage == 20) and Input.pressed("confirm") and (not self.gameover_dialogue:isTyping()) then
        self.gameover_dialogue:remove()
        self.music:play("AUDIO_DARKNESS")
        self.music.source:setLooping(false)
        self.gameover_stage = 21
    end

    if (self.gameover_stage == 21) and (not self.music:isPlaying()) then
        if Kristal.getModOption("quickReload") then
            Kristal.quickReload()
        else
            love.event.quit("restart")
        end
        self.gameover_stage = 0
    end




    if (self.gameover_choicer_done) then
        if self.gameover_fadebuffer < 0 then
            self.gameover_fadebuffer = 0
        end
        self.gameover_fadebuffer = self.gameover_fadebuffer + DTMULT
    end

    if (self.gameover_stage >= 8) and self.gameover_fadebuffer < 10 then
        if (math.abs(self.gameover_heart_x - self.gameover_ideal_x) <= 2) then
            self.gameover_heart_x = self.gameover_ideal_x
        end
        if (math.abs(self.gameover_heart_y - self.gameover_ideal_y) <= 2) then
            self.gameover_heart_y = self.gameover_ideal_y
        end

        local HEARTDIFF = ((self.gameover_ideal_x - self.gameover_heart_x) * 0.3)
        self.gameover_heart_x = self.gameover_heart_x + (HEARTDIFF * DTMULT)

        HEARTDIFF = ((self.gameover_ideal_y - self.gameover_heart_y) * 0.3)
        self.gameover_heart_y = self.gameover_heart_y + (HEARTDIFF * DTMULT)
    end

    if ((self.gameover_timer >= 80) and (self.gameover_timer < 150)) then
        if Input.pressed("confirm") then
            self.gameover_skipping = self.gameover_skipping + 1
        end
        if (self.gameover_skipping >= 4) then
            self:loadTemp()
        end
    end

    if self.gameover_text then
        self.gameover_alpha = self.gameover_alpha + (0.02 * DTMULT)
        self.gameover_text:setColor(1, 1, 1, self.gameover_alpha)
    end
end

function Game:loadTemp()
    error("TODO: LOAD AFTER GAME OVER")
end

function Game:encounter(encounter, transition, enemy)
    if transition == nil then transition = true end

    if self.battle then
        error("Attempt to enter battle while already in battle")
    end

    if type(encounter) == "string" then
        local encounter_name = encounter
        encounter = Registry.getEncounter(encounter_name)
        if not encounter then
            error("Attempt to load into non existent encounter \"" .. encounter_name .. "\"")
        end
    end

    self.encounter_enemy = enemy

    self.state = "BATTLE"

    self.battle = Battle()
    self.battle:postInit(transition and "TRANSITION" or "INTRO", encounter)
    self.stage:addChild(self.battle)
end

function Game:setVolume(volume)
    MASTER_VOLUME = volume
    love.audio.setVolume(volume)
end

function Game:getVolume()
    return MASTER_VOLUME or 1
end

function Game:update(dt)
    if self.previous_state and self.previous_state.animation_active then
        self.previous_state:update(dt)
        self.lock_input = true
    elseif not self.started then
        self.started = true
        self.lock_input = false
        if self.world.player then
            self.world.player.visible = true
        end
        for _,follower in ipairs(self.world.followers) do
            follower.visible = true
        end
        if Kristal.getModOption("encounter") then
            self:encounter(Kristal.getModOption("encounter"), self.world.player ~= nil)
        end
    end

    if Kristal.modCall("preUpdate", dt) then
        return
    end

    if self.world.player and -- If the player exists,
       not self.lock_input -- and input isn't locked,
       and self.state == "OVERWORLD" -- and we're in the overworld state,
       and self.world.state == "GAMEPLAY" then -- and the world is in the gameplay state,
        Game:handleMovement()
    end

    if self.state == "BATTLE" and self.battle and self.battle:isWorldHidden() then
        self.world.active = false
        self.world.visible = false
    else
        self.world.active = true
        self.world.visible = true
    end

    self.stage:update(dt)

    if self.state == "GAMEOVER" then
        self:updateGameOver(dt)
    end

    Kristal.modCall("postUpdate", dt)
end

function Game:handleMovement()
    local walk_x = 0
    local walk_y = 0

    if love.keyboard.isDown("right") then walk_x = walk_x + 1 end
    if love.keyboard.isDown("left") then walk_x = walk_x - 1 end
    if love.keyboard.isDown("down") then walk_y = walk_y + 1 end
    if love.keyboard.isDown("up") then walk_y = walk_y - 1 end

    self.world.player:walk(walk_x, walk_y, love.keyboard.isDown("lshift") or love.keyboard.isDown("x"))

    if self.world.camera_attached and (walk_x ~= 0 or walk_y ~= 0) then
        self.world.camera.x = Utils.approach(self.world.camera.x, self.world.player.x, 12 * DTMULT)
        self.world.camera.y = Utils.approach(self.world.camera.y, self.world.player.y - (self.world.player.height * 2)/2, 12 * DTMULT)
    end
end

function Game:keypressed(key)
    if self.previous_state and self.previous_state.animation_active then return end

    if Kristal.modCall("onKeyPressed", key) then
        return
    end

    if self.state == "BATTLE" then
        if self.battle then
            self.battle:keypressed(key)
        end
    elseif self.state == "OVERWORLD" then
        if self.world then
            self.world:keypressed(key)
        end
    end
end

function Game:draw()
    love.graphics.clear(0, 0, 0, 1)
    love.graphics.push()
    if Kristal.modCall("preDraw") then
        love.graphics.pop()
        if self.previous_state and self.previous_state.animation_active then
            self.previous_state:draw()
        end
        return
    end
    love.graphics.pop()

    self.stage:draw()

    if self.state == "GAMEOVER" then
        if self.gameover_screenshot then
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.draw(self.gameover_screenshot)
        end
        if (self.gameover_stage >= 8) and (self.gameover_fadebuffer < 10)then
            local xfade = ((10 - self.gameover_fadebuffer) / 10)
            if (xfade > 1) then
                xfade = 1
            end

            love.graphics.setColor(1, 1, 1, xfade * 0.6)

            love.graphics.draw(self.soul_blur, self.gameover_heart_x * 2, self.gameover_heart_y * 2, 0, 2, 2)

            love.graphics.setFont(self.font)
            love.graphics.setColor(1, 1, 1, xfade)
            if self.gameover_selected == 1 then
                love.graphics.setColor(1, 1, 0, xfade)
            end
            love.graphics.print("CONTINUE", 160, 360)
            love.graphics.setColor(1, 1, 1, xfade)
            if self.gameover_selected == 2 then
                love.graphics.setColor(1, 1, 0, xfade)
            end
            love.graphics.print("GIVE UP", 380, 360)
        end
    end

    if self.fade_white then
        love.graphics.setColor(1, 1, 1, self.fader_alpha)
    else
        love.graphics.setColor(0, 0, 0, self.fader_alpha)
    end
    love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
    love.graphics.setColor(1, 1, 1, 1)

    love.graphics.push()
    Kristal.modCall("postDraw")
    love.graphics.pop()

    if self.previous_state and self.previous_state.animation_active then
        self.previous_state:draw(true)
    end
end

return Game