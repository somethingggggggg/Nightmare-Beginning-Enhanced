#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.8
sound_play(global.S_SmashDash)
image_xscale = Pers1.image_xscale
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Pers1)
{
    move_snap(Pers1.x,Pers1.y)
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Pers1)
{
    x = Pers1.x
    y = Pers1.y
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
tailscustom.SmashDash = false
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
