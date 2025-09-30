local DogHoleBG, super = Class(Object)

function DogHoleBG:init()
    super.init(self, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    self:setScale(1)
    self:setParallax(1, 1)
    self.layer = WORLD_LAYERS["bottom"]

    self.spr = Assets.getTexture("world/maps/doghole_lone")
    self.bg_speed = 0
    self.bg_speed_max = 0.05
end

function DogHoleBG:draw()
    super.draw(self)

    self.bg_speed = self.bg_speed + self.bg_speed_max * DTMULT
    if self.bg_speed_max < 0 and self.bg_speed > 240 then
        self.bg_speed = self.bg_speed - 240
    end

    local xx, yy = 0, 0
    xx = xx + self.bg_speed
    yy = yy + self.bg_speed

    local xx2, yy2 = 0, 0
    xx2 = xx2 + (self.bg_speed / 3)
    yy2 = yy2 + (self.bg_speed / 3)

    Draw.setColor(0.5 / 3, 0.5 / 3, 0.5 / 3, 1)
    Draw.drawWrapped(self.spr, true, true, math.floor(xx2), math.floor(yy2), 0, 0.5, 0.5, 120, 120)

    Draw.setColor(0.5 / 2, 0.5 / 2, 0.5 / 2, 1)
    Draw.drawWrapped(self.spr, true, true, xx, 60, 0, 0.75, 0.75, 120, 120)

    Draw.setColor(0.5, 0.5, 0.5, 1)
    Draw.drawWrapped(self.spr, true, true, math.floor(xx), math.floor(yy), 0, 1, 1, 120, 120)
end

return DogHoleBG