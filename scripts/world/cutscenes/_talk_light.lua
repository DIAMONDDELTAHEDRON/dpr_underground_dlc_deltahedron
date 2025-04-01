return function(cutscene)
    local susie = cutscene:getCharacter("susie")
    local ceroba = cutscene:getCharacter("ceroba")
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
        elseif Game.world.map.id == "hotland/hotellobby" then
            if ceroba then
                cutscene:showNametag("Ceroba")
                cutscene:text("* I remember how floors here used to be squeaky clean...", "snarky", "ceroba")
                cutscene:text("* So clean,[wait:5] in fact,[wait:5] you could see your reflection in them!", "happy", "ceroba")
                cutscene:text("* I even almost slipped a couple of times here!", "snarky", "ceroba")
                cutscene:text("* My point being...", "neutral", "ceroba")
                cutscene:text("* They don't care for this place as much as they used to.", "muttering", "ceroba")
                cutscene:hideNametag()
            else
                cutscene:text("* Your voice echoes aimlessly.")
            end
        elseif Game.world.map.id == "hotland/precore" then
            if ceroba then
                cutscene:showNametag("Ceroba")
                cutscene:text("* I DO NOT understand how did no one fell from that bridge yet.", "nervous", "ceroba")
                cutscene:text("* There are literally NO HANDRAILS!", "angry", "ceroba")
                cutscene:text("* What about the safety?!", "angry_alt", "ceroba")
                cutscene:hideNametag()
            else
                cutscene:text("* Your voice echoes aimlessly.")
            end
        elseif Game.world.map.id == "hotland/core1" then
            if ceroba then
                cutscene:showNametag("Ceroba")
                cutscene:text("* So...[wait:5] The [color:red]CORE[color:reset].", "neutral", "ceroba")
                cutscene:text("* To be honest,[wait:5] I've never been here before.", "alt", "ceroba")
                cutscene:text("* I heard it can be used as an alternate path to the castle...", "closed_eyes", "ceroba")
                cutscene:text("* But with CORE's tendency to change it's structure every now and then...", "nervous_smile", "ceroba")
                cutscene:text("* Even I wouldn't risk going in here.", "closed_eyes", "ceroba")
                cutscene:text("* You can get lost here in no time.", "neutral", "ceroba")
                cutscene:text("* But I suppose we're feeling adventurous today,[wait:5] huh?", "snarky", "ceroba")
                cutscene:text("* In that case,[wait:5] let's go on.", "smile", "ceroba")
                cutscene:text("* Just...[wait:5] Be careful.[wait:5] Don't fall into the pits.", "neutral", "ceroba")
                cutscene:text("* Who knows what might happen...", "notsure", "ceroba")
                cutscene:hideNametag()
            else
                cutscene:text("* Your voice echoes aimlessly.")
            end
        else
            cutscene:text("* Your voice echoes aimlessly.")
        end
    end
end