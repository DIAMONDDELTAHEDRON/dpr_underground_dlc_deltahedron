local HotlandRedEdge, super = Class(Event)

function HotlandRedEdge:init(data, x, y, w, h)
    super.init(self, data, x, y, w, h)
	
    local properties = data.properties or {}
	
    self.sine_wave = properties["sine_wave"] or false     -- makes the pillars wobble (like obj_hotland_rededge_x)

    self.base = Assets.getTexture("world/events/hotland_rededge")
    self.top = Assets.getTexture("world/events/hotland_rededge_top")

    self.solid = false

    self.siner = 0
    self.tiles_y = math.floor(self.height/80)
end

function HotlandRedEdge:update()
    self.siner = self.siner + (1 * DTMULT)

    super.update(self)
end

function HotlandRedEdge:draw()
    for i = 1, self.tiles_y do
        if self.sine_wave then
            Draw.setColor(1, 1, 1, math.abs(math.sin((i / 4) - (self.siner / 12))))
            if i == 1 then
                Draw.draw(self.top, (math.cos((self.siner + (i * 4)) / 12) * 10), (i - 1) * 80, 0, 2, 2)
            else
                Draw.draw(self.base, (math.cos((self.siner + (i * 4)) / 12) * 10), (i - 1) * 80, 0, 2, 2)
            end
            Draw.setColor(1, 1, 1, 1)
        else
            Draw.setColor(1, 1, 1, math.abs(math.sin(self.siner / 16)))
            if i == 1 then
                Draw.draw(self.top, 0, (i - 1) * 80, 0, 2, 2)
            else
                Draw.draw(self.base, 0, (i - 1) * 80, 0, 2, 2)
            end
            Draw.setColor(1, 1, 1, 1)
        end
    end

    super.draw(self)
end

return HotlandRedEdge