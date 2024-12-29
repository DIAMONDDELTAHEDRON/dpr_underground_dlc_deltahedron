---@type table<string,fun(cutscene:WorldCutscene, event?: Event|NPC)>
local ruins = {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    flowey = function(cutscene, event)
        local flowey = cutscene:getCharacter("flowey")
        flowey:setAnimation("rise")
        cutscene:wait(1)
        Game.world.music:play("flowey", 1, 1)
        cutscene:textTagged("* Howdy![wait:10]\n* I'm [color:yellow]FLOWEY[color:reset]![wait:10]\n* [color:yellow]FLOWEY[color:reset] the [color:yellow]FLOWER[color:reset]!", "nice", "flowey")
    end
}
return ruins