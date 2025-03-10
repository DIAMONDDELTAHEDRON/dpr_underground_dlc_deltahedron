local actor, super = Class(Actor, "flowey")

function actor:init()
    super.init(self)

    self.name = "Flowey"

    self.width = 21
    self.height = 21

    self.hitbox = {0, 25, 19, 14}

    self.color = {1, 0, 0}

    self.flip = nil

    self.path = "world/npcs/flowey"
    self.default = "down"

    self.voice = "flowey"
    self.portrait_path = "face/flowey"
    self.portrait_offset = nil

    self.can_blush = false

    self.talk_sprites = {
        ["down"] = 0.25,
        ["up"] = 0.25,
        ["left"] = 0.25,
        ["right"] = 0.25
    }

    self.animations = {
        ["rise"] = {"rise", 0.1, false, {after = "down"}},
        ["sink"] = {"sink", 0.1, false, {after = "prerise"}},
    }

    self.offsets = {
        ["prerise"] = {0, 0},
        ["rise"] = {0, 0},
        ["sink"] = {0, 0},
    }
end

return actor