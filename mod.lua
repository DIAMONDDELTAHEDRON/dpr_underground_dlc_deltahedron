function Mod:init()
    print("Loaded "..self.info.name.."!")
	
    self.voice_timer = 0
end

function Mod:preUpdate(dt)
    self.voice_timer = Utils.approach(self.voice_timer, 0, DTMULT)
end

function Mod:onTextSound(sound, node)
    if sound == "wingding" or sound == "wingding_1" then
        if self.voice_timer == 0 then
            local snd = Assets.playSound(Utils.pick{"voice/wingding_1", "voice/wingding_2", "voice/wingding_3", "voice/wingding_4", "voice/wingding_5", "voice/wingding_6", "voice/wingding_7"})
            self.voice_timer = 2
		end
		return true
	end
end

function Mod:load(data, new_file)
	if new_file then
		Game.money = Kristal.getLibConfig("magical-glass", "debug") and 1000 or 0
		Game.lw_money = Kristal.getLibConfig("magical-glass", "debug") and 1000 or 0
	end
    MagicalGlassLib:setLightBattleShakingText(true)
    MagicalGlassLib:setCellCallsRearrangement(true)
    self:setMusicPitches()
end

function Mod:setMusicPitches()
    MUSIC_PITCHES["snowy"] = 0.95
    MUSIC_PITCHES["mystery"] = 0.95
    MUSIC_PITCHES["mysteriousroom2"] = 0.5
    MUSIC_PITCHES["waterquiet"] = 0.9
    MUSIC_PITCHES["core"] = 0.97
    MUSIC_PITCHES["drone"] = 0.5
end