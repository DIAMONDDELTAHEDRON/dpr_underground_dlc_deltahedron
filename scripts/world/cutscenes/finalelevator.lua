---@type table<string,fun(cutscene:WorldCutscene, event?: Event|NPC)>
local finalelevator = {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    panel = function(cutscene, event)
        if not Game:getFlag("finalelevator_pos") then
            Game:setFlag("finalelevator_pos", "newhome/elevatorout")
        else
            if Game:getFlag("finalelevator_pos") == "hotland/core_final" then
                Game:setFlag("finalelevator_pos", "newhome/elevatorout")
            elseif Game:getFlag("finalelevator_pos") == "newhome/elevatorout" then
                Game:setFlag("finalelevator_pos", "hotland/core_final")
            end
        end
        Assets.playSound("item")
        cutscene:wait(0.5)
        Assets.playSound("bell")
        Game.world.player:setFacing("down")
        for _,follower in ipairs(Game.world.followers) do
            if follower.y > 360 then
                follower.orig_pos_y = follower.y
                follower:slideTo(follower.x, 360, 0.3)
            end
        end
        local doorR = Rectangle(240, 360, 40, 120)
        local doorL = Rectangle(360, 360, 40, 120)
        doorR.color = {0, 0, 0}
        doorL.color = {0, 0, 0}
        doorR.layer = WORLD_LAYERS["below_ui"]
        doorL.layer = WORLD_LAYERS["below_ui"]
        Game.world:addChild(doorR)
        Game.world:addChild(doorL)
        cutscene:slideTo(doorR, doorR.x + 40, doorR.y, 0.5)
        cutscene:slideTo(doorL, doorL.x - 40, doorL.y, 0.5)
        cutscene:wait(0.5)
        Assets.playSound("noise")
        cutscene:wait(0.5)
        if not Game:getFlag("finalelevator_cutscene") then
            Game.world.music:play("elevator_last", 1)
            cutscene:wait(2)
            if cutscene:getCharacter("susie_lw") then
                cutscene:text("* ...", "neutral_side", "susie") -- gotta write a proper cutscene
            end
            Game:setFlag("finalelevator_cutscene", true)
            cutscene:wait(2)
            Game.world.music:stop()
            Music("elevator_last_end", 1, 1, false)
            cutscene:wait(2)
        else
            Music("elevator", 1, 1, false)
            cutscene:wait(3.7)
        end
        Assets.playSound("bell")
        for _,follower in ipairs(Game.world.followers) do
            if follower.orig_pos_y then
                follower:slideTo(follower.x, follower.orig_pos_y, 0.3)
                follower.orig_pos_y = nil
            end
        end
        cutscene:slideTo(doorR, doorR.x - 40, doorR.y, 0.5)
        cutscene:slideTo(doorL, doorL.x + 40, doorL.y, 0.5)
        cutscene:wait(0.5)
        Assets.playSound("noise")
        doorR:remove()
        doorL:remove()
        cutscene:wait(0.5)
    end,

    transition = function(cutscene, event)
        if not Game:getFlag("finalelevator_pos") then
            Game:setFlag("finalelevator_pos", "hotland/core_final")
        end
        cutscene:mapTransition(Game:getFlag("finalelevator_pos"), "elevator")
    end
}
return finalelevator