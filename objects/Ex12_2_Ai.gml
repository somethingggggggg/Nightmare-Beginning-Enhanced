#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mp_linear_step(AI2.x, AI2.y,6, false)
#define Collision_AI1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Collision_AI2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if AI2.sprite_index = sprKnucklesPunch
{
    instance_destroy()
}
else
{
    with AI2
    {
        BL.FF_K = false
        instance_destroy()
    }
}
#define Collision_Pers1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers1.sprite_index = sprTailsJump
{
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
shader_pixel_set(global.pshader)
shader_pixel_uniform_f("fade",0.5)
draw_self()
shader_reset()
