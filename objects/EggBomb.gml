#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ground = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, FF_Ground) && vspeed >= 0
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
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed > 0.25
{
    image_index = 2
}
else
{
    if vspeed < -0.25
    {
        image_index = 0
    }
    else
    {
        image_index = 1
    }
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = -1.5;
#define Collision_Ex11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TAB.EggBombTime = false
sound_play(global.S_Crash)
sound_play(global.S_ExeBeat)
with Ex11
{
    instance_destroy()
}
instance_destroy()
#define Collision_FF_Wall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TAB.EggBombTime = false
instance_destroy()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TAB.EggBombTime = false
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(global.pshader)
shader_pixel_uniform_f("fade",0.5)
draw_self()
shader_reset()
