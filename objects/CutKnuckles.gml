#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
if global.OrigCutscene = 1 hspeed = 4

if PersonalChoiser.Knuckles_Pers = true
{
    view_object[0] = CutKnuckles
    hspeed = 4
}

if BL.Knuckles_Plot = false
{
    instance_destroy()
}

if instance_exists(CutEggman) && PersonalChoiser.Eggman_Pers != true && PersonalChoiser.Tails_Pers != true
{
    CutEggman.hspeed = -3
}
#define Collision_Warn1_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(CutEggman)
{
    CutTails.alarm[7] = 1
}
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
