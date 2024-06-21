#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Hit = 0
global.rings = 0
vspeed = -9
sound_play(global.S_Hit)
sound_stop(global.S_Burn)
sound_stop(global.S_Final_Boss)
ground = false
alarm[0] = 120
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.SLive = 0
{
room_goto(75)
}
else
{
room_goto(68)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, HZ_1) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}
