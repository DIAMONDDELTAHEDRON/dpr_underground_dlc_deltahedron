local CorePremett, super = Class(Map)

function CorePremett:onEnter()
    super.onEnter(self)

    self.corebg = Game.world:spawnObject(GlowBG(0, 0), "objects_bg")
    self.corebg:setLayer(Game.world:parseLayer("objects_bg"))
end

function CorePremett:onExit()
    super.onExit(self)

    self.corebg:remove()
end

return CorePremett