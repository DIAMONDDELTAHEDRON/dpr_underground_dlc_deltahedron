---@class GDoor : Event
---@overload fun(...) : GDoor
local FakeFalls, super = Class(Event)

function FakeFalls:init(data)
    super.init(self, data)

	local properties = data.properties or {}

    self.type = data.properties["type"] or "normal"

    self.width = 40
    self.height = 80
	
    self:setHitbox(8, 0, 32, 84)

    self.timer = 0

    self.col = 0
end

function FakeFalls:update()
    super.update(self)
	
    self.timer = self.timer + 0.5 * DTMULT
	
    if not Game.world.player:collidesWith(self) then
        self.col = self.col - DTMULT
        if self.col <= 0 then
            self.col = 0
        end
    end
end

function FakeFalls:onCollide()
    self.col = self.col + 2 * DTMULT
    if self.col >= 4 then
        self.col = 4
    end
end

function FakeFalls:draw()
    super.draw(self)
	
    local maxy = 0
    if self.col == 0 then
        maxy = 0
    end
    if self.col == 1 then
        maxy = -16*2
    end
    if self.col == 2 then
        maxy = -25*2
    end
    if self.col > 2 then
        maxy = -30*2
    end

    local frames = Assets.getFrames("world/events/fakefalls/"..self.type.."/anim")
    local frame = math.floor(self.timer) % #frames + 1
    Draw.draw(frames[frame], 0, maxy, 0, 2, 2)
end

return FakeFalls
