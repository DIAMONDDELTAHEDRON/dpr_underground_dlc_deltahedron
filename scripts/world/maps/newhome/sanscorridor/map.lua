local SansCorridor, super = Class(Map)

function SansCorridor:onEnter()
    super.onEnter(self)
	
    self.pillars = Game.world:spawnObject(SansCorridorPillar(0, 0))
    self.pillars.layer = WORLD_LAYERS["below_ui"]
end

function SansCorridor:onExit()
    super.onExit(self)
	
    self.pillars:remove()
end

return SansCorridor