return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 40,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 11,
  nextobjectid = 108,
  properties = {
    ["border"] = "city",
    ["light"] = false,
    ["music"] = "dogcheck",
    ["name"] = "Test City - Banana Room"
  },
  tilesets = {
    {
      name = "alley",
      firstgid = 1,
      filename = "../../tilesets/alley.tsx"
    },
    {
      name = "city_alley",
      firstgid = 362,
      filename = "../../tilesets/city_alley.tsx"
    },
    {
      name = "street_edges",
      firstgid = 472,
      filename = "../../tilesets/street_edges.tsx"
    },
    {
      name = "alley_buildings_glitch",
      firstgid = 682,
      filename = "../../tilesets/alley_buildings_glitch.tsx"
    },
    {
      name = "alley_animated",
      firstgid = 754,
      filename = "../../tilesets/alley_animated.tsx"
    },
    {
      name = "test_battleborder",
      firstgid = 790,
      filename = "../../tilesets/test_battleborder.tsx"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 40,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        260, 260, 260, 260, 261, 259, 260, 260, 260, 260, 260, 730, 260, 261, 434, 434, 259, 260, 714, 260, 260, 260, 260, 260, 746, 261, 259, 260, 260, 260,
        260, 260, 260, 722, 261, 259, 260, 738, 260, 260, 260, 260, 260, 261, 434, 434, 259, 260, 260, 260, 260, 730, 260, 260, 260, 261, 259, 698, 260, 260,
        260, 260, 260, 260, 261, 289, 718, 290, 290, 290, 290, 290, 290, 291, 434, 434, 289, 290, 290, 290, 290, 290, 750, 290, 290, 291, 259, 260, 260, 260,
        260, 698, 260, 260, 261, 289, 290, 290, 290, 290, 734, 290, 290, 291, 434, 434, 289, 290, 742, 290, 290, 290, 290, 290, 726, 291, 259, 260, 706, 260,
        260, 260, 260, 730, 261, 307, 305, 305, 305, 305, 305, 305, 305, 306, 434, 434, 307, 305, 305, 305, 305, 305, 305, 305, 305, 306, 259, 260, 260, 260,
        260, 260, 260, 260, 261, 86, 86, 86, 86, 86, 86, 86, 86, 420, 434, 434, 422, 86, 86, 86, 86, 86, 86, 86, 86, 86, 259, 738, 260, 260,
        260, 260, 260, 260, 261, 86, 409, 410, 410, 410, 410, 410, 757, 413, 434, 434, 427, 410, 410, 410, 757, 410, 410, 411, 86, 86, 259, 260, 260, 260,
        260, 746, 260, 260, 261, 86, 420, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 260, 260,
        260, 260, 260, 738, 261, 86, 420, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 772, 86, 86, 259, 746, 260, 260,
        260, 260, 260, 260, 261, 86, 420, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 260, 260,
        245, 245, 245, 245, 246, 86, 769, 434, 434, 434, 434, 434, 244, 245, 245, 245, 245, 246, 434, 434, 434, 434, 434, 422, 86, 86, 244, 245, 245, 245,
        260, 260, 260, 698, 261, 86, 420, 434, 434, 434, 434, 434, 259, 698, 260, 260, 730, 261, 434, 434, 434, 434, 434, 775, 86, 86, 259, 260, 738, 260,
        260, 260, 260, 260, 261, 86, 420, 434, 434, 434, 434, 434, 259, 260, 260, 260, 260, 261, 434, 434, 434, 434, 434, 422, 86, 86, 259, 730, 260, 260,
        260, 260, 260, 714, 261, 86, 420, 434, 434, 434, 434, 434, 259, 738, 260, 260, 260, 261, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 260, 260,
        260, 738, 260, 260, 261, 86, 766, 434, 434, 434, 434, 434, 259, 260, 260, 260, 746, 261, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 722, 260,
        260, 260, 260, 260, 261, 86, 420, 434, 434, 434, 434, 434, 289, 290, 290, 750, 718, 291, 434, 434, 434, 434, 434, 422, 86, 86, 259, 706, 260, 260,
        260, 260, 260, 746, 261, 86, 420, 434, 434, 434, 434, 434, 289, 742, 290, 290, 290, 291, 434, 434, 434, 434, 434, 772, 86, 86, 259, 260, 260, 260,
        260, 260, 260, 260, 261, 86, 420, 434, 434, 434, 434, 434, 307, 305, 305, 305, 305, 306, 434, 434, 434, 434, 434, 422, 86, 86, 259, 690, 260, 260,
        260, 260, 260, 738, 261, 86, 420, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 260, 260,
        260, 260, 260, 260, 261, 86, 769, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 698, 260, 260,
        260, 260, 722, 260, 261, 86, 420, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 260, 260,
        260, 260, 260, 260, 261, 86, 766, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 706, 260,
        260, 260, 260, 260, 261, 86, 420, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 434, 422, 86, 86, 259, 260, 260, 260,
        245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 246, 20, 25, 25, 26, 244, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245,
        260, 260, 260, 706, 260, 260, 260, 722, 260, 260, 260, 260, 261, 35, 80, 80, 56, 259, 260, 260, 698, 260, 260, 706, 260, 260, 260, 260, 260, 260,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 698, 261, 35, 80, 80, 56, 259, 714, 260, 260, 260, 260, 260, 260, 260, 260, 260, 714, 260,
        260, 260, 260, 260, 746, 260, 260, 260, 260, 260, 260, 260, 261, 35, 80, 80, 56, 259, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260,
        245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 251, 291, 35, 80, 80, 56, 289, 244, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 291, 35, 80, 80, 56, 289, 259, 690, 260, 260, 260, 260, 260, 260, 260, 260, 706, 260,
        260, 260, 714, 260, 260, 260, 260, 260, 260, 260, 738, 261, 306, 230, 231, 231, 236, 307, 259, 730, 260, 260, 260, 260, 746, 260, 260, 260, 690, 260,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 730, 690, 261, 98, 98, 98, 98, 98, 98, 259, 260, 260, 260, 260, 690, 260, 260, 260, 260, 260, 260,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 98, 98, 98, 98, 98, 98, 289, 290, 750, 290, 290, 290, 290, 290, 290, 290, 290, 718,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 98, 98, 98, 98, 98, 98, 289, 290, 290, 290, 290, 290, 694, 290, 290, 290, 290, 290,
        260, 260, 260, 260, 260, 738, 260, 260, 260, 260, 260, 261, 98, 98, 98, 98, 98, 98, 307, 305, 305, 305, 305, 305, 305, 305, 305, 305, 305, 305,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 98, 98, 98, 98, 98, 98, 414, 414, 414, 414, 414, 414, 414, 414, 414, 414, 414, 414,
        260, 260, 260, 730, 260, 260, 260, 706, 260, 260, 260, 261, 98, 98, 98, 98, 98, 98, 414, 414, 414, 414, 414, 414, 414, 414, 414, 414, 414, 414,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 260, 260, 260, 260, 730, 260, 260, 260, 730, 260, 260, 260, 260, 698, 260, 260, 260, 260,
        260, 260, 690, 260, 260, 260, 260, 260, 260, 260, 260, 261, 260, 260, 698, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260,
        260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 261, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260, 260
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 40,
      id = 6,
      name = "battleborder",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 795, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 795, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 795, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 795, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 795, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 790, 791, 791, 791, 791, 791, 791, 791, 791, 799, 798, 791, 791, 791, 791, 791, 791, 791, 791, 791, 792, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 793, 801, 801, 801, 801, 801, 801, 794, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 798, 791, 791, 791, 791, 791, 791, 799, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 800, 801, 801, 801, 801, 801, 801, 801, 794, 0, 0, 793, 801, 801, 801, 801, 801, 801, 801, 801, 802, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 797, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 793, 802, 0, 0, 0, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 798, 791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "enemycollision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 62,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 720,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 160,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 720,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
      class = "",
      visible = true,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 200,
          y = 160,
          width = 360,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 0,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 160,
          width = 400,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 0,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1040,
          y = 200,
          width = 40,
          height = 720,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 200,
          y = 920,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 200,
          width = 40,
          height = 720,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 400,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 400,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          class = "",
          shape = "rectangle",
          x = 680,
          y = 400,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 680,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          class = "",
          shape = "rectangle",
          x = 680,
          y = 920,
          width = 360,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          class = "",
          shape = "rectangle",
          x = 680,
          y = 960,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 960,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 1200,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 1440,
          width = 720,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 1200,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 98,
          name = "",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 1320,
          width = 440,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 14,
          name = "savepoint",
          class = "",
          shape = "rectangle",
          x = 580,
          y = 740,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 560,
          y = -40,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "alley",
            ["marker"] = "entry_down"
          }
        },
        {
          id = 27,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 400,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 480,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 560,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 640,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 720,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 800,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 800,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 480,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 560,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 640,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 720,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 800,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "banana",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 800,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "npc",
          class = "",
          shape = "point",
          x = 980,
          y = 860,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "starwalker",
            ["cutscene"] = "starwalker"
          }
        },
        {
          id = 49,
          name = "enemy",
          class = "",
          shape = "rectangle",
          x = 240,
          y = 840,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "virovirokun",
            ["chase"] = true,
            ["chasespeed"] = 2,
            ["encounter"] = "virovirokun_lots",
            ["flagcheck"] = "!viroviro_banana"
          }
        },
        {
          id = 50,
          name = "chest",
          class = "",
          shape = "rectangle",
          x = 960,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["money"] = "1"
          }
        },
        {
          id = 69,
          name = "slidearea",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 920,
          width = 160,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {
            ["lock"] = false
          }
        },
        {
          id = 90,
          name = "cameratarget",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 1200,
          width = 240,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {
            ["lockx"] = true,
            ["locky"] = true,
            ["marker"] = "camtargy",
            ["time"] = 0.25
          }
        },
        {
          id = 96,
          name = "script",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 1400,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "boomralsei"
          }
        },
        {
          id = 106,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 1200,
          y = 1360,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "alley3",
            ["marker"] = "entry_left"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 24,
          name = "entry",
          class = "",
          shape = "point",
          x = 600,
          y = 40,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "spawn",
          class = "",
          shape = "point",
          x = 600,
          y = 820,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "shooter_left",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 400,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "shooter_right",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 400,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 91,
          name = "camtargy",
          class = "",
          shape = "point",
          x = 600,
          y = 1240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 107,
          name = "entry_right",
          class = "",
          shape = "point",
          x = 1160,
          y = 1400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "battleareas",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 51,
          name = "",
          class = "",
          shape = "rectangle",
          x = 200,
          y = 400,
          width = 280,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
