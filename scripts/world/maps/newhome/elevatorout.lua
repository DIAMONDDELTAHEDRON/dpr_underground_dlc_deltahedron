return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 26,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 5,
  nextobjectid = 15,
  properties = {
    ["border"] = "undertale/castle",
    ["light"] = true,
    ["name"] = "Castle Elevator"
  },
  tilesets = {
    {
      name = "ruins_tint",
      firstgid = 1,
      filename = "../../tilesets/ruins_tint.tsx",
      exportfilename = "../../tilesets/ruins_tint.lua"
    },
    {
      name = "greyruinsplaceholder",
      firstgid = 129,
      filename = "../../tilesets/greyruinsplaceholder.tsx",
      exportfilename = "../../tilesets/greyruinsplaceholder.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 26,
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
        15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 145, 17, 17, 145, 14, 15, 15, 15, 15, 15,
        15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 145, 17, 17, 145, 14, 15, 15, 15, 15, 15,
        15, 30, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 145, 17, 17, 145, 22, 23, 23, 31, 15, 15,
        15, 16, 2, 3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 5, 145, 17, 17, 145, 2, 3, 3, 14, 15, 15,
        15, 16, 2, 3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 5, 145, 17, 17, 145, 2, 3, 3, 14, 15, 15,
        15, 16, 2, 3, 0, 0, 4, 3, 3, 3, 3, 3, 3, 3, 3, 5, 145, 17, 17, 145, 2, 3, 3, 14, 15, 15,
        15, 16, 10, 11, 0, 0, 11, 11, 11, 11, 11, 11, 11, 11, 11, 13, 145, 17, 17, 145, 10, 11, 11, 14, 15, 15,
        15, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 145, 32, 32, 32, 14, 15, 15,
        15, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 50, 145, 32, 32, 32, 14, 15, 15,
        15, 38, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 39, 15, 15,
        15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
        15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15
      }
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
          type = "",
          shape = "rectangle",
          x = 40,
          y = 360,
          width = 920,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 920,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 240,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 0,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 0,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 240,
          width = 400,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 240,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 280,
          width = 40,
          height = 80,
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
          id = 9,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 230,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "hotland/finalelevator",
            ["marker"] = "south"
          }
        },
        {
          id = 10,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 230,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "hotland/finalelevator",
            ["marker"] = "south"
          }
        },
        {
          id = 11,
          name = "savepoint",
          type = "",
          shape = "rectangle",
          x = 860,
          y = 319,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "elevatordoor",
          type = "",
          shape = "rectangle",
          x = 140,
          y = 240,
          width = 120,
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
          id = 12,
          name = "elevator",
          type = "",
          shape = "point",
          x = 200,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "spawn",
          type = "",
          shape = "point",
          x = 820,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
