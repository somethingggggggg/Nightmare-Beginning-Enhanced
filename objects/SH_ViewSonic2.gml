#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed= 0.12
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprSH_ViewSonic3
arg1=0
arg2=0.15
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_SuicideHill)
transition_kind = 21
transition_steps = 180
room_goto(57)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[2] = true && Act = 0
{
Act = 1
alarm[0] = 260
}

if sprite_index = sprSH_ViewSonic3 && image_index >=2
{
image_index = 2
image_speed = 0
}

if sprite_index = sprSH_ViewSonic3 && image_index =2 && Act = 1
{
Act = 2
alarm[1] = 300
}
