on alfred_script(q)
    tell application "Swinsian"
        set rating of current track to q
        set trackname to name of current track
        set trackartist to artist of current track
        set trackalbum to album of current track
    end tell

    tell application "iTunes"
        set mute to true
            set mySongs to every track whose artist is trackartist and name is trackname and album is trackalbum
        repeat with aSong in mySongs
            play aSong
        end repeat
    end tell
end alfred_script