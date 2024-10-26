#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.3
sound_play(global.S_To_Play)
image_xscale = 0.16
image_yscale = 0.16
a = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=150
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_goto(10)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale += 0.14
image_yscale += 0.14
if image_xscale > 1 && image_yscale > 1 && a = 0
{
    a = 1
    image_speed = 0
    image_alpha = 0
    alarm[0] = 240
}
