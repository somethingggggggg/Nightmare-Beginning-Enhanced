#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
image_xscale = -1
hspeed = -3

if PersonalChoiser.Eggman_Pers = true
{
    view_object[0] = CutEggman
    hspeed = -3
}

if BL.Eggman_Plot = false
{
    instance_destroy()
}

if instance_exists(CutKnuckles) && PersonalChoiser.Tails_Pers != true
{
    CutKnuckles.hspeed = 4
}
#define Collision_Warn1_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CutTails.alarm[7] = 10
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
