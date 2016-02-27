tell application "iTunes"
 if player state is playing then
  --get the current track time:
  set currTime to get player position
  if currTime < 10 then
   --go to start of the track:
   set currSkip to 0
  else
   --otherwise, skip backwards 
   set currSkip to currTime - 10
  end if
  
  set player position to currSkip --skip to new position
 end if
 
end tell