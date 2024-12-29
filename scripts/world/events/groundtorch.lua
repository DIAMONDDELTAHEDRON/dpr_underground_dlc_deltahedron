---@class GDoor : Event
---@overload fun(...) : GDoor
local GroundTorch, super = Class(Event)

function GroundTorch:init(data)
    super.init(self, data.x, data.y, data.w, data.h)
	
	local properties = data.properties or {}
	
    self.width = 40
    self.height = 80
	
    self:setHitbox(0, 40, 40, 40)
    self.solid = true
	
	self.interact_count = 0
	self.activated = false
	self.locked = false
	
    self.glow = LightSource(20, 50, 50, COLORS.white)
    self.glow.style = "soft"
    self.glow.visible = false
    self:addChild(self.glow)

    self:setOrigin(0.5, 1)
	
    self.timer = 0
end

function GroundTorch:update()
    super.update(self)
	
    self.timer = self.timer + 0.5 * DTMULT

    if (self.interact_count == 1 or self.locked) then
	    self.activated = true
        self.glow.visible = true
    end
    if self.interact_count > 1 then
	    self.activated = false
        self.glow.visible = false
	    self.interact_count = 0
    end
end

function GroundTorch:draw()
    super.draw(self)
	
    if self.activated then
        local frames = Assets.getFrames("world/events/groundtorch/on")
        local frame = math.floor(self.timer) % #frames + 1
        Draw.draw(frames[frame], 0, 0, 0, 2, 2)
    else
	    Draw.draw(Assets.getTexture("world/events/groundtorch/off"), 0, 0, 0, 2, 2)
    end
end

function GroundTorch:onInteract(player, dir)
    if not self.locked then
        self.interact_count = self.interact_count + 1
        Assets.playSound("noise")
    end

	return true
end

return GroundTorch
