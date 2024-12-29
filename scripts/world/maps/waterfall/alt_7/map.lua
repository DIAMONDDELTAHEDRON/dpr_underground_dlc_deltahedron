local WaterfallAltMap7, super = Class(Map)

function WaterfallAltMap7:init(world, data)
    super.init(self, world, data)
	
    self.won = false
end

function WaterfallAltMap7:onEnter()
    super.onEnter(self)
	
    local puzzleCompleted = Game:getFlag("waterfallAltMap7_puzzleCompleted", false)
	
    self.torch_1 = Game.world.map:getEvent(45)
    self.torch_2 = Game.world.map:getEvent(46)
    self.torch_3 = Game.world.map:getEvent(47)

    if puzzleCompleted == false then
        self.won = false
    else
        self.torch_1.locked = true
        self.torch_2.locked = true
        self.torch_3.locked = true

        self.won = true
    end
end

function WaterfallAltMap7:update()
    super.update(self)
	
    if (self.torch_1.activated and self.torch_2.activated and self.torch_3.activated) and not self.won then
        Game:setFlag("waterfallAltMap7_puzzleCompleted", true)
		
        self.torch_1.locked = true
        self.torch_2.locked = true
        self.torch_3.locked = true

        Assets.playSound("locker")
        Game.world:shakeCamera(4)
		
        self.won = true
    end
end

return WaterfallAltMap7