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
if BL.Tails_Plot = true && scr_input_get("enter","pressed")
{
    instance_create(0,0,Timer_16)
    PersonalChoiser.Tails_Pers = true
    background_hspeed[0] = 0
    MS_1.image_speed = 0
    MS_2.image_speed = 0
    MS_3.image_speed = 0
    instance_destroy()
}
else if BL.Tails_Plot != true && scr_input_get("enter","pressed")
{
    sound_play(global.S_Locked)
}
#define Collision_MS_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Knuckles_Plot = true && scr_input_get("enter","pressed")
{
    instance_create(0,0,Timer_16)
    PersonalChoiser.Knuckles_Pers = true
    background_hspeed[0] = 0
    MS_1.image_speed = 0
    MS_2.image_speed = 0
    MS_3.image_speed = 0
    instance_destroy()
}
else if BL.Knuckles_Plot != true && scr_input_get("enter","pressed")
{
sound_play(global.S_Locked)
}
#define Collision_MS_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Eggman_Plot = true && scr_input_get("enter","pressed")
{
    instance_create(0,0,Timer_16)
    PersonalChoiser.Eggman_Pers = true
    background_hspeed[0] = 0
    MS_1.image_speed = 0
    MS_2.image_speed = 0
    MS_3.image_speed = 0
    instance_destroy()
}
else if BL.Eggman_Plot != true && scr_input_get("enter","pressed")
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
