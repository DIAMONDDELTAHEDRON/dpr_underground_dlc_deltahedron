return function(cutscene)
    if Game:isDessMode() then
        if Game.world.map.id == "ruins/firstroom" then
            cutscene:textTagged("* alright", "challenging", "dess")
            cutscene:textTagged("* time to put my Frisk UNDERTALE impression to good use", "calm", "dess")
        elseif Game.world.map.id == "ruins/ruins_1" then
            cutscene:textTagged("* ahh yes", "kind", "dess")
            cutscene:textTagged("* i love me some low effort tilesets made in the early 2010s", "condescending", "dess")
        else
            cutscene:text("* allan please add dialogue", "neutral", "dess")
        end
    else
        if Game.world.map.id == "ruins/firstroom" then
            local hasTalkedAboutFirstRuinsRoom = Game:getFlag("hasTalkedAboutFirstRuinsRoom", false)
            if hasTalkedAboutFirstRuinsRoom == false then
			    --Hero specific dialog
                if cutscene:getCharacter("hero_lw") then
                    cutscene:textTagged("* Welp.[wait:5] Don't think there's anywhere to go but forward now.", "annoyed_b", "hero")
                    cutscene:textTagged("* (...[wait:5] I don't know why,[wait:5] but...)", "pout", "hero")
                    cutscene:textTagged("* (Something about this place seems...[wait:10] familiar.)", "suspicious", "hero")
                    if cutscene:getCharacter("susie_lw") then
                        cutscene:textTagged("* Hey, uhhh, you alright there?", "sus_nervous", "susie")
                        cutscene:textTagged("* Huh?", "shocked", "hero")
                        cutscene:textTagged("* Oh yeah, I'm fine. I'm just...", "neutral_closed", "hero")
                        cutscene:textTagged("* Lost in thought,[wait:5] that's all.", "annoyed", "hero")
                        cutscene:textTagged("* ...if you say so, dude.", "nervous_side", "susie")
                    end
                end
                Game:setFlag("hasTalkedAboutFirstRuinsRoom", true)
            else
                if cutscene:getCharacter("hero_lw") then
                    cutscene:textTagged("* ...", "neutral_closed", "hero")
                end
            end
        else
            cutscene:text("* Your voice echoes aimlessly.")
        end
    end
end