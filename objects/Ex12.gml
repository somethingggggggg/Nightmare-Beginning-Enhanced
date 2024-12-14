#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_xscale = -1
alarm[0] = 5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
inst = instance_create(x,y,objExeFFAfterImg)
inst.image_xscale = image_xscale
inst.sprite_index = sprite_index
alarm[0] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_line(x,y,x,y+150,Pers2,0,1)
{
    instance_change(Ex12_2,Ex12)
    speed = 0
}

if collision_line(x,y,x,y+150,AI2,0,1)
{
    instance_change(Ex12_2_Ai,Ex12)
    speed = 0
}
#define Collision_Pers1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers1.sprite_index = sprTailsJump && instance_exists(SmachDash)
{
    sound_play(global.S_ExeBeat)
    instance_destroy()
}
#define Collision_EnergyShieldFF
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(psGrayscale())
shader_pixel_uniform_f("fade",0.5)
draw_self()
shader_reset()
