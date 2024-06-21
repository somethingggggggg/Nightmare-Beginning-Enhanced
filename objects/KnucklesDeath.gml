#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Hit = 0
global.rings = 0
vspeed = -9
sound_stop_all()
sound_play(global.S_Hit)
ground = false
alarm[0] = 120
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.KLive = 0
{
instance_create(0,0,KPassed)
if instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
room_goto(18)
}
else
{
room_goto(5)
}}
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
if place_meeting(x, y+vspeed+1, HZ_1B) && vspeed >= 0
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
