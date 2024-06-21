#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
if DM_Metal.image_xscale = 1
{
hspeed = 8
}
if DM_Metal.image_xscale = -1
{
hspeed = -8
}
sound_play(global.S_EnergyBlast)
alarm[0] = 180
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
