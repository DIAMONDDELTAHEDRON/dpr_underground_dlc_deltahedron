local HotlandBottomEdge, super = Class(Event)

function HotlandBottomEdge:init(data, x, y, w, h)
    super.init(self, data, x, y, w, h)
	
    local properties = data.properties or {}
	
    self.outline = properties["outline"] or false

    self.left = Assets.getFrames("world/events/hotland_edge/leftedge")
    self.bottom = Assets.getFrames("world/events/hotland_edge/bottomedge")
    self.right = Assets.getFrames("world/events/hotland_edge/rightedge")

    self.solid = false

    self.siner = 0
    self.tiles_x = math.floor(self.width/40)
end

function HotlandBottomEdge:update()
    self.siner = self.siner + (1 * DTMULT)

    super.update(self)
end

function HotlandBottomEdge:draw()
    for i = 1, self.tiles_x do
        local frame = math.floor(self.siner / 2)

        if i == 1 then
            Draw.draw(self.left[frame % #self.left + 1], 0, 0, 0, 2, 2)
        elseif i == self.tiles_x then
            Draw.draw(self.right[frame % #self.right + 1], (i - 1) * 40, 0, 0, 2, 2)
        else
            Draw.draw(self.bottom[frame % #self.bottom + 1], (i - 1) * 40, 0, 0, 2, 2)
        end
    end

    if self.outline == true then
        Draw.setColor(COLORS.black)
        Draw.rectangle(true, 0, 38, 40 * self.tiles_x, 2)
        Draw.setColor(COLORS.white)
    end

    super.draw(self)
end

return HotlandBottomEdge