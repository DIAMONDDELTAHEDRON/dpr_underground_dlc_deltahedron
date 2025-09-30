local HotlandCog, super = Class(Event)

function HotlandCog:init(data, x, y, w, h)
    super.init(self, data, x, y, w, h)
	
    local properties = data.properties or {}
	
    self.base_small = Assets.getTexture("world/events/hotland_cog/cogsmall_e")
    self.base_med = Assets.getTexture("world/events/hotland_cog/cogmed_e")

    self.solid = false

    self.siner = 0
	self.cog_scale = self.width/40
end

function HotlandCog:update()
    self.siner = self.siner + (1 * DTMULT)

    super.update(self)
end

function HotlandCog:draw()
	if self.cog_scale < 2 then
		Draw.draw(self.base_small, 0, 0, 0, self.cog_scale*2, self.cog_scale*2, 7, 7)
		Draw.setColor(COLORS["maroon"])
		local xpos, ypos
		for i = 0, 6 do
			xpos = (0.6 * self.cog_scale) + (-math.cos(math.rad((i / 6) * 360 + self.siner*2)) * 16) * self.cog_scale
			ypos = (0.6 * self.cog_scale) + (-math.sin(math.rad((i / 6) * 360 + self.siner*2)) * 16) * self.cog_scale
			love.graphics.circle("fill", xpos, ypos, self.cog_scale*4, 4)
		end
		Draw.setColor(COLORS["white"])
	elseif self.cog_scale >= 2 then
		Draw.draw(self.base_med, 0, 0, 0, self.cog_scale, self.cog_scale, 15, 15)
		Draw.setColor(COLORS["maroon"])
		local xpos, ypos
		for i = 0, 6 do
			xpos = (0.8 * self.cog_scale) + (-math.cos(math.rad((i / 6) * 360 + self.siner*2)) * 16) * self.cog_scale
			ypos = (0.8 * self.cog_scale) + (-math.sin(math.rad((i / 6) * 360 + self.siner*2)) * 16) * self.cog_scale
			love.graphics.circle("fill", xpos, ypos, self.cog_scale*4, 8)
		end
		Draw.setColor(COLORS["white"])
	end
    super.draw(self)
end

return HotlandCog