local actor, super = Class(Actor, "ventfan")

function actor:init()
    super.init(self)

    self.name = "Vent Fan"

    self.width = 65
    self.height = 60

    self.hitbox = {0, 42, 65, 18}

    self.color = {1, 0, 0}

    self.flip = nil

    self.path = "world/npcs/ventfan"
    self.default = "pose"

    self.voice = nil
    self.portrait_path = nil
    self.portrait_offset = nil

    self.can_blush = false

    self.talk_sprites = {
        ["talk"] = 0.2
    }

    self.animations = {
        ["pose"] = {"pose", 0.25, true}
    }

    self.offsets = {}
end

return actor