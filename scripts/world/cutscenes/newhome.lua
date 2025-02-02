---@type table<string,fun(cutscene:WorldCutscene, event?: Event|NPC)>
local newhome = {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    lastsans = function(cutscene, event)
        cutscene:wait(2)
		
        local spawn_sans = false
		
        cutscene:during(function()
            if Game.world.camera.x >= 850*2 and not spawn_sans then
                spawn_sans = true
                local sans_npc = cutscene:spawnNPC("sans", 930*2, Game.world.player.y)
                sans_npc:setAnimation("walk")
                sans_npc:setFacing("left")
                sans_npc:setColor(COLORS.black)
            end		
        end)
		
        cutscene:detachCamera()
        cutscene:wait(cutscene:panToSpeed(Game.world.camera.x + 200, Game.world.camera.y, 1))
		
		local sans = cutscene:getCharacter("sans")

        Assets.playSound("churchbell", 0.8, 1.5)
        cutscene:wait(155/30)

        -- dialogue will be updated later to fit. this is currently just a 1-1 recreation of the ice cream scene lol.
        cutscene:setTextboxTop(true)
        cutscene:textTagged("* welp.", nil, "sans")
        cutscene:textTagged("* you're here early.", nil, "sans")
        cutscene:textTagged("* ...", nil, "sans")
        cutscene:textTagged("* i'm gonna be honest.", nil, "sans")
        cutscene:textTagged("* you got here so fast..", nil, "sans")

        sans:setColor(COLORS.white)
		sans:setSprite("icecream_1_1")

        cutscene:textTagged("* i haven't even finished eating my ice cream yet.", "wink", "sans")
        cutscene:textTagged("* ... well, you're not in a rush.", "look_left", "sans")
        cutscene:textTagged("* you can wait a minute[wait:5], right?", "wink", "sans")
        --[[
        if GeneralUtils:getLeader("hero") then
            cutscene:textTagged("* Uhhh...", "neutral_opened", "hero")
            cutscene:textTagged("* Sure...?", "suspicious", "hero")
        elseif GeneralUtils:getLeader("dess") or Game:isDessMode() then
            cutscene:textTagged("* yeah sure idc", "kind", "dess")
        end
        ]]
		
        cutscene:wait(1)

        local pain_and_suffering = Music("icecream")
		pain_and_suffering:play()
		pain_and_suffering.source:setLooping(false)

        local sansEatCount = 0

        -- if anyone wants to make the code for this less of an eyesore and make the timing on Sans' animations better, feel free.
        local function sansEatIceCream(sprite, wait_time)
            sansEatCount = sansEatCount + 1
			--[[
            local debug_text = Text(sansEatCount,
                0, 
                0, 
                SCREEN_WIDTH, 
                SCREEN_HEIGHT,
                {
                    align = "left",
                    color = COLORS.red,
                    font = "sans"
                }
            )
            debug_text:setParallax(0,0)
            debug_text:setLayer(WORLD_LAYERS["ui"])
            Game.world:addChild(debug_text)
            ]]
            sans:setSprite(sprite)
            cutscene:wait(wait_time/30)
            --debug_text:remove()
		end

        sansEatIceCream("icecream_2_2", 22) -- 1  -- change to icecream_2
        sansEatIceCream("icecream_2_1", 23) -- 2
        sansEatIceCream("icecream_2_2", 22) -- 3
        sansEatIceCream("icecream_2_1", 22) -- 4
        sansEatIceCream("icecream_2_2", 23) -- 5
        sansEatIceCream("icecream_2_1", 22) -- 6
        sansEatIceCream("icecream_2_2", 23) -- 7
        sansEatIceCream("icecream_2_1", 22) -- 8
        sansEatIceCream("icecream_2_2", 23) -- 9
        sansEatIceCream("icecream_2_1", 22) -- 10
        sansEatIceCream("icecream_2_2", 23) -- 11
        sansEatIceCream("icecream_2_1", 22) -- 12
        sansEatIceCream("icecream_2_2", 23) -- 13
        sansEatIceCream("icecream_2_1", 22) -- 14
        sansEatIceCream("icecream_2_2", 20) -- 15
        sansEatIceCream("icecream_2_1", 24) -- 16
        sansEatIceCream("icecream_2_2", 22) -- 17
        sansEatIceCream("icecream_2_1", 23) -- 18
        sansEatIceCream("icecream_2_2", 21) -- 19
        sansEatIceCream("icecream_2_1", 24) -- 20
		
        sansEatIceCream("icecream_3_2", 21) -- 21 -- change to icecream_3
        sansEatIceCream("icecream_3_1", 22) -- 22
        sansEatIceCream("icecream_3_2", 21) -- 23
        sansEatIceCream("icecream_3_1", 22) -- 24
        sansEatIceCream("icecream_3_2", 21) -- 25
        sansEatIceCream("icecream_3_1", 22) -- 26
        sansEatIceCream("icecream_3_2", 21) -- 27
        sansEatIceCream("icecream_3_1", 22) -- 28
        sansEatIceCream("icecream_3_2", 21) -- 29
        sansEatIceCream("icecream_3_1", 12) -- 30
        sansEatIceCream("icecream_3_2", 25) -- 31
        sansEatIceCream("icecream_3_1", 29) -- 32
        sansEatIceCream("icecream_3_2", 22) -- 33
        sansEatIceCream("icecream_3_1", 21) -- 34
        sansEatIceCream("icecream_3_2", 23) -- 35
        sansEatIceCream("icecream_3_1", 22) -- 36
        sansEatIceCream("icecream_3_2", 14) -- 37
        sansEatIceCream("icecream_3_1", 14) -- 38
        sansEatIceCream("icecream_3_2", 23) -- 39
        sansEatIceCream("icecream_3_1", 22) -- 40

        sansEatIceCream("icecream_4_2", 16) -- 41 -- change to icecream_4
        sansEatIceCream("icecream_4_1", 23) -- 42
        sansEatIceCream("icecream_4_2", 22) -- 43
        sansEatIceCream("icecream_4_1", 23) -- 44
        sansEatIceCream("icecream_4_2", 43) -- 45
        sansEatIceCream("icecream_4_1", 44) -- 46
        sansEatIceCream("icecream_4_2", 242)-- 47
        sansEatIceCream("icecream_4_1", 23) -- 48
        sansEatIceCream("icecream_4_2", 22) -- 49
        sansEatIceCream("icecream_4_1", 23) -- 50
        sansEatIceCream("icecream_4_2", 21) -- 51
        sansEatIceCream("icecream_4_1", 21) -- 52
        sansEatIceCream("icecream_4_2", 21) -- 53
        sansEatIceCream("icecream_4_1", 21) -- 54
        sansEatIceCream("icecream_4_2", 23) -- 55
        sansEatIceCream("icecream_4_1", 22) -- 56
        sansEatIceCream("icecream_4_2", 23) -- 57
        sansEatIceCream("icecream_4_1", 22) -- 58
        sansEatIceCream("icecream_4_2", 22) -- 59
        sansEatIceCream("icecream_4_1", 21) -- 60
        sansEatIceCream("icecream_4_2", 20) -- 61
        sansEatIceCream("icecream_4_1", 19) -- 62
        sansEatIceCream("icecream_4_2", 22) -- 63
        sansEatIceCream("icecream_4_1", 21) -- 64
		
        sansEatIceCream("icecream_5_2", 23) -- 65
        sansEatIceCream("icecream_5_1", 82) -- 66
		
        sans:setSprite("walk")              -- end
        sans:setFacing("left")
        cutscene:wait(82/30)
		
        cutscene:textTagged("* phew.", "look_left", "sans")
        cutscene:textTagged("* you can wait a minute[wait:5], right?", "neutral", "sans")
        cutscene:textTagged("* sometimes it's nice to take it easy.", "eyes_closed", "sans")
        cutscene:textTagged("* otherwise,[wait:5] you'll get brainfreeze.", "wink", "sans")
        cutscene:textTagged("* anyway...", "look_left", "sans")
        cutscene:textTagged("* i'm sure you got something important to do.", "eyes_closed", "sans")
        cutscene:textTagged("* wouldn't want to slow you down.", "wink", "sans")
        cutscene:textTagged("* later.", "look_left", "sans")
    end
}
return newhome