---@class Redacted : Event
---@overload fun(...) : Redacted
local Redacted, super = Class(Event)

function Redacted:init(data)
    super.init(self, data.x, data.y, data.w, data.h)
	
    self:setSprite("world/npcs/redacted_a")
    self.width = 25
    self.height = 50
    self.solid = true

    self.played = false
end

function Redacted:update()
    super.update(self)
	
    local dist = Utils.dist(Game.world.player.x, Game.world.player.y, self.x, self.y)

    if dist < 20 then
        if self.played == false then
            Game.world.music:play("mysteriousroom2", 0.8)
            self.played = true
        end
		
        local disto = 10 / (dist + 1)
        if disto > 1 then
            disto = 1
        end
		
        self.alpha = disto
    end
end

function Redacted:onInteract(player, dir)
    Game.world:startCutscene(function(cutscene)
        cutscene:text("[voice:wingding_1][speed:0.4][font:wingdings]* [redacted]")
	    return true
    end)
end

return Redacted
