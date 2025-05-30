#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_alpha = 1
alarm[0] = 5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
alarm[1] = 5
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
alarm[0] = 5
#define Collision_MS_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(TPassed) && scr_input_get("enter","pressed")
{
instance_create(0,0,Timer_2)
background_hspeed[0] = 0
with MS_1 image_speed = 0
with MS_2 image_speed = 0
with MS_3 image_speed = 0
instance_destroy()
}
else if instance_exists(TPassed) && scr_input_get("enter","pressed")
{
sound_play(global.S_Locked)
}
#define Collision_MS_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(KPassed) && scr_input_get("enter","pressed")
{
instance_create(0,0,Timer_7)
background_hspeed[0] = 0
with MS_1 image_speed = 0
with MS_2 image_speed = 0
with MS_3 image_speed = 0
instance_destroy()
}
else if instance_exists(KPassed) && scr_input_get("enter","pressed")
{
sound_play(global.S_Locked)
}
#define Collision_MS_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(EPassed) && scr_input_get("enter","pressed")
{
    instance_create(0,0,Timer_12)
    background_hspeed[0] = 0
    with MS_1 image_speed = 0
    with MS_2 image_speed = 0
    with MS_3 image_speed = 0
    instance_destroy()
}
else if instance_exists(EPassed) && scr_input_get("enter","pressed")
{
    sound_play(global.S_Locked)
}
#define KeyPress_37
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mp_linear_step_object(x-10000,y, 112,Solid)
sound_play(global.S_MS_Move)
#define KeyPress_39
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mp_linear_step_object(x+10000,y, 112,Solid)
sound_play(global.S_MS_Move)
