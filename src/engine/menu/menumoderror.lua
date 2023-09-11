---@class MenuModError : StateClass
---
---@field menu Menu
---
---@overload fun(menu:Menu) : MenuModError
local MenuModError, super = Class(StateClass)

function MenuModError:init(menu)
    self.menu = menu
end

function MenuModError:registerEvents()
    self:registerEvent("enter", self.onEnter)
    self:registerEvent("draw", self.draw)
end

-------------------------------------------------------------------------------
-- Callbacks
-------------------------------------------------------------------------------

function MenuModError:onEnter(old_state)
    self.menu.heart_target_x = 320 - 32 - 16 + 1 - 11
    self.menu.heart_target_y = 480 - 16 + 1
end

function MenuModError:draw()
    local failed_mods = Kristal.Mods.failed_mods or {}
    local plural = #failed_mods == 1 and "mod" or "mods"
    Draw.printShadow({{255, 255, 0}, tostring(#failed_mods), {255, 255, 255}, " " .. plural .. " failed to load!"}, -1, 96, 2, "center", 640)

    local moderrors = 0
    local liberrors = 0

    for k,v in pairs(failed_mods) do
        if v.file == "mod.json" then
            moderrors = moderrors + 1
        elseif v.file == "lib.json" then
            liberrors = liberrors + 1
        end
    end

    local y = 128

    if moderrors > 0 then
        Draw.printShadow({"The following mods have invalid ", {196, 196, 196}, "mod.json", {255, 255, 255}, " files:"}, -1, y, 2, "center", 640)

        y = y + 64

        for k,v in pairs(failed_mods) do
            if v.file == "mod.json" then
                Draw.printShadow({{255, 127, 127}, v.path}, -1, y, 2, "center", 640)
                y = y + 32
            end
        end
        y = y + 32
    end

    if liberrors > 0 then
        Draw.printShadow({"The following mods use invalid ", {196, 196, 196}, "lib.json", {255, 255, 255}, " files:"}, -1, y, 2, "center", 640)

        y = y + 64

        for k,v in pairs(failed_mods) do
            if v.file == "lib.json" then
                Draw.printShadow({{255, 127, 127}, v.path}, -1, y, 2, "center", 640)
                y = y + 32
            end
        end
    end

    Draw.printShadow("Got it", -1, 454 - 8, 2, "center", 640)
end

return MenuModError