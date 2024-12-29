function Mod:init()
    print("Loaded "..self.info.name.."!")

    self:setMusicPitches()
end

function Mod:setMusicPitches()
    MUSIC_PITCHES["snowy"] = 0.95
    MUSIC_PITCHES["mystery"] = 0.95
    MUSIC_PITCHES["mysteriousroom2"] = 0.5
    MUSIC_PITCHES["waterquiet"] = 0.9
    MUSIC_PITCHES["core"] = 0.97
end