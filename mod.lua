function Mod:init()
    print("Loaded "..self.info.name.."!")
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