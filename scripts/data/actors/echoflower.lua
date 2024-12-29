local actor, super = Class(Actor, "echoflower")

function actor:init()
    super.init(self)

    self.name = "Echo Flower"

    self.width = 19
    self.height = 28

    self.hitbox = {0, 20, 19, 8}

    self.color = {1, 0, 0}

    self.flip = nil

    self.path = "world/npcs/echoflower"
    self.default = ""

    self.voice = nil
    self.portrait_path = nil
    self.portrait_offset = nil

    self.can_blush = false

    self.talk_sprites = {
        [""] = 0.2
    }

    self.animations = {}

    self.offsets = {}
end

return actor