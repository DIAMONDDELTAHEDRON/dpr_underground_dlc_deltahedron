return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 7,
  nextobjectid = 26,
  properties = {
    ["light"] = true,
    ["music"] = "waterquiet"
  },
  tilesets = {
    {
      name = "water_2",
      firstgid = 1,
      filename = "../../tilesets/water_2.tsx",
      exportfilename = "../../tilesets/water_2.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
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
        0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0,
        0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0,
        0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 19, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 19, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 19, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 19, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 1, 77, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 19, 0, 0,
        0, 21, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 19, 0, 0,
        0, 76, 2, 2, 2, 3, 128, 128, 128, 1, 2, 2, 2, 77, 0, 0,
        0, 0, 0, 0, 0, 21, 128, 128, 128, 19, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "objects_bg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
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
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 400,
          width = 160,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 160,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 120,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 120,
          width = 360,
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
          x = 520,
          y = 120,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 120,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "polygon",
          x = 440,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = 0 },
            { x = 40, y = 40 }
          },
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
          id = 13,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 240,
          y = 440,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "waterfall/friendlyhub",
            ["marker"] = "undyne_house"
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
          id = 16,
          name = "down",
          class = "",
          shape = "rectangle",
          x = 280,
          y = 360,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
