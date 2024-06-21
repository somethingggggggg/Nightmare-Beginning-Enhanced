///CollideSlopes()

while place_meeting(x, y, objSlopeParent) && vspeed >= 0
{
if rolling = true
{
rolling = false
sound_stop(global.S_Rolling)
}
   y -= 1;
   ground = true;
   drawAngle = -45
}

while place_meeting(x, y+maxSpeed+1, objSlopeParent) && !place_meeting(x, y+1, objSlopeParent) && vspeed >= 0
{
if rolling = true
{
rolling = false
sound_stop(global.S_Rolling)
}
   y += 1;
   ground = true;
}
