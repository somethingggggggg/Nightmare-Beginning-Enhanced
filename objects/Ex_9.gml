#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.5
image_alpha = 1
a = 0
image_xscale = 0.2
image_yscale = 0.2
sound_play(global.S_Scream_4)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
room_goto(18)
}
else
{
room_goto(5)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale += 0.2
image_yscale += 0.2
if image_xscale > 1 && image_yscale > 1 && a = 0
{
    a = 1
    image_speed = 0
    image_alpha = 0
    alarm[0] = 210
}
