---@type table<string,fun(cutscene:WorldCutscene, event?: Event|NPC)>
local ruins = {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    flowey = function(cutscene, event)
        local flowey = cutscene:getCharacter("flowey")
        local susie = cutscene:getCharacter("susie_lw")
        flowey:setAnimation("rise")
        cutscene:wait(1)
        Game.world.music:play("flowey", 1, 1)
        cutscene:textTagged("* Howdy![wait:10]\n* I'm [color:yellow]FLOWEY[color:reset]![wait:10]\n* [color:yellow]FLOWEY[color:reset] the [color:yellow]FLOWER[color:reset]!", "nice", "flowey")
        if #Game.party > 1 then
            cutscene:textTagged("* I haven't seen any of you around here before,[wait:5] are you guys new here?", "niceside", "flowey")
        else
            cutscene:textTagged("* I haven't seen you around here before,[wait:5] are you new here?", "niceside", "flowey")
        end
        cutscene:textTagged("* Well I guess that means little ol' me...", "wink", "flowey")
        cutscene:textTagged("* ... will have to show you how things work down here!", "wink", "flowey")
        -- local encounter = cutscene:startLightEncounter("flowey_tutorial", true) TODO: Make this encounter
        cutscene:text("encounter goes here")
        cutscene:textTagged("* Well,[wait:5] that should be everything you need to know for now.", "niceside", "flowey")
        if susie then
            cutscene:textTagged("* Hey wait hang on,[wait:5] how the hell do we even get out of here?", "annoyed", "susie")
            cutscene:textTagged("* Oh that's really simple, really.", "plain", "flowey")
            cutscene:textTagged("* Keep on heading forward and you'll eventually come across the barier.", "nice", "flowey")
            cutscene:textTagged("* Or,[wait:5] what's left of it, at least.", "smirk", "flowey")
            cutscene:textTagged("* It's a long walk,[wait:5] but there'll be lots of nice sights along the way.", "niceside", "flowey")
            cutscene:textTagged("* I'm sure you'll get there in no time!", "wink", "flowey")
            cutscene:textTagged("* Seeya!", "nice", "flowey")
        end
        flowey:setAnimation("sink")
        cutscene:wait(1)
        flowey:remove()
        Game.world.music:fade(0, 1)
    end
}
return ruins