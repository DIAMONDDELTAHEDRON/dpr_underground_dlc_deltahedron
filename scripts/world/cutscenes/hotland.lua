---@type table<string,fun(cutscene:WorldCutscene, event?: Event|NPC)>
local hotland = {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    ventfan = function(cutscene, event)
        local ventfan = cutscene:getCharacter("ventfan")

        cutscene:setSpeaker(ventfan)
        cutscene:text("* OO LA LA!![wait:5]\n* This room is so PHOTOGENIC![wait:5]\n* It's PHOTOGENIUS!!!!")
        cutscene:text("* I gotta put it in ALL my \nvideos!!![wait:5] WOOOOOAAAAHHH!!")
    end,
}
return hotland