local ElevatorDoor, super = Class(Event)

function ElevatorDoor:init(data)
    super.init(self, data.x, data.y, data.width, data.height)

    local properties = data.properties or {}

    self.type = data.properties["type"] or "hotland"
    self.double_doors = data.properties["double_doors"] or false

    --TO-DO: find a way to make these sprites customizable.
    self.sprite_inside     = Sprite("world/events/elevatordoor/"..self.type.."/inside")
    if not self.double_doors then
        self.sprite_door_left  = Sprite("world/events/elevatordoor/"..self.type.."/door")
        self.sprite_door_right = Sprite("world/events/elevatordoor/"..self.type.."/door")
    else
        self.sprite_door_left  = Sprite("world/events/elevatordoor/"..self.type.."/door_left")
        self.sprite_door_right = Sprite("world/events/elevatordoor/"..self.type.."/door_right")
    end
    self.sprite_frame      = Sprite("world/events/elevatordoor/"..self.type.."/frame")
    
    self.sprite_inside.debug_select = false
    self.sprite_door_left.debug_select = false
    self.sprite_door_right.debug_select = false
    --self.sprite_frame.debug_select = false
    
    self:addChild(self.sprite_inside)
    self:addChild(self.sprite_door_left)
    self:addChild(self.sprite_door_right)
    --self:addChild(self.sprite_frame)


    self.sprite_inside:setScale(2)
    self.sprite_door_left:setScale(2)
    self.sprite_door_right:setScale(2)
    self.sprite_frame:setScale(2)

    self.sprite_frame.x = 12
    self.sprite_frame.y = -70
    
    self.sprite_door_left.x = 20
    self.sprite_door_left.y = -60
    self.sprite_door_right.x = 60
    self.sprite_door_right.y = -60
    
    self.sprite_inside.x = 12
    self.sprite_inside.y = -70

    Game.world.timer:after(1/30, function ()
        self.layer = 0.3
    end)

end

function ElevatorDoor:onInteract()
    Game.world:startCutscene(function(cutscene)
        if Game:hasDLC("dlc_yellow") then
            local party2
            local party3
            local party4
            if Game.party[2] then
                party2 = cutscene:getCharacter(Game.party[2].id)
            end
            if Game.party[3] then
                party3 = cutscene:getCharacter(Game.party[3].id)
            end
            if Game.party[4] then
                party4 = cutscene:getCharacter(Game.party[4].id)
            end
            local choice = cutscene:textChoicer("* Do you want to go to New Home City?", { "Yes", "    No" })
            if choice == 1 then
                self:open()
                cutscene:detachFollowers()
                cutscene:wait(0.7)
                cutscene:wait(cutscene:walkTo(Game.world.player, self.x + 63, Game.world.player.y, 0.1, "up"))
                cutscene:wait(cutscene:walkTo(Game.world.player, Game.world.player.x, self.y + 37, 0.3, "up"))
                Game.world.player:fadeOutAndRemove(0.2)
                cutscene:wait(0.2)
                if Game.party[2] then
                    cutscene:wait(cutscene:walkTo(party2, self.x + 63, party2.y, 0.3, "up"))
                    cutscene:wait(cutscene:walkTo(party2, party2.x, self.y + 37, 0.4, "up"))
                    party2:fadeOutAndRemove(0.2)
                    cutscene:wait(0.2)
                end
                if Game.party[3] then
                    cutscene:wait(cutscene:walkTo(party3, self.x + 63, party3.y, 0.3, "up"))
                    cutscene:wait(cutscene:walkTo(party3, party3.x, self.y + 37, 0.4, "up"))
                    party3:fadeOutAndRemove(0.2)
                    cutscene:wait(0.2)
                end
                if Game.party[4] then
                    cutscene:wait(cutscene:walkTo(party4, self.x + 63, party4.y, 0.3, "up"))
                    cutscene:wait(cutscene:walkTo(party4, party4.x, self.y + 37, 0.4, "up"))
                    party4:fadeOutAndRemove(0.2)
                    cutscene:wait(0.2)
                end
                Game:swapIntoMod("dlc_yellow", false, "newhome/01")
            end
        else
            cutscene:text("* (The elevator isn't working.)")
        end
    end)
end

function ElevatorDoor:open()
    Assets.playSound("elecdoor_open")
    self.sprite_door_left:slideTo(-23, self.sprite_door_left.y, 0.3)
    self.sprite_door_right:slideTo(103, self.sprite_door_right.y, 0.3)
end

function ElevatorDoor:close()
    Assets.playSound("elecdoor_close")
    self.sprite_door_left:slideTo(20, self.sprite_door_left.y, 0.3)
    self.sprite_door_right:slideTo(60, self.sprite_door_right.y, 0.3)
end

function ElevatorDoor:draw()
    Draw.scissor(self.sprite_frame.x, self.sprite_frame.y, self.sprite_frame.width*2-32, self.sprite_frame.height*2)
    super.draw(self)
    love.graphics.setScissor()
    love.graphics.draw(Assets.getTexture("world/events/elevatordoor/"..self.type.."/frame"), 12, -70, 0, 2, 2)
end

return ElevatorDoor