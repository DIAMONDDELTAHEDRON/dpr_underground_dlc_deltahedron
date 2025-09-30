local DogHole_Bg, super = Class(Event)

function DogHole_Bg:init(data)
    local map = Game.world.map
    function map:onEnter()
        Game.world:spawnObject(DogHoleBG(), "objects_bg")

    end
    super.init(self, data)
end

return DogHole_Bg