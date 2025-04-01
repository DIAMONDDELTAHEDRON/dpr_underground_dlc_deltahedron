---@type table<string,fun(cutscene:WorldCutscene, event?: Event|NPC)>
local ruins = {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    fountain = function(cutscene, event)
        cutscene:text("* (There's an inscription on\nthis fountain.)")
        cutscene:text("* Royal Memorial Fountain\n* Built 201X\n* (Mettaton Added Last Week)")
        if cutscene:getCharacter("ceroba") then
            cutscene:showNametag("Ceroba")
            cutscene:text("* Thank GOD they turned off this thing.", "muttering", "ceroba")
            cutscene:text("* It was spilling water everywhere!", "irked", "ceroba")
            cutscene:hideNametag()
        end
    end,

    reception = function(cutscene, event)
        cutscene:text("* (The reception is empty.)")
        if cutscene:getCharacter("ceroba") then
            cutscene:showNametag("Ceroba")
            cutscene:text("* You wanted to book in or something?", "neutral", "ceroba")
            cutscene:text("* It's not worth it,[wait:5] belive me.", "unamused", "ceroba")
            cutscene:hideNametag()
        end
    end,

    burgershop = function(cutscene, event)
        cutscene:text("* (The doors are locked.)")
        if cutscene:getCharacter("ceroba") then
            cutscene:showNametag("Ceroba")
            cutscene:text("* Did they finally moved that guy from here?", "alt", "ceroba")
            cutscene:text("* I was beginning to think he'd working here forever.", "nervous_smile", "ceroba")
            cutscene:hideNametag()
        end
    end
}
return ruins