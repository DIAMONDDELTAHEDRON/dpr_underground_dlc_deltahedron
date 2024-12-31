local SansCorridorPillar, super = Class(Object)

function SansCorridorPillar:init(x, y)
    super.init(self, x, y)
	
    self.x = 200*2
    self:setParallax(2, 0)
end

function SansCorridorPillar:draw()
    super.draw(self)
	
    for i = 0, 9 do
        Draw.draw(Assets.getTexture("world/maps/newhome/foregroundpillar"), (230*2) * i, 0, 0, 2, 2)
        if i == 5 then
            Draw.draw(Assets.getTexture("world/maps/newhome/foregroundpillar"), (230*2) * i + (110*2), 0, 0, 2, 2)
        end
    end
end

return SansCorridorPillar