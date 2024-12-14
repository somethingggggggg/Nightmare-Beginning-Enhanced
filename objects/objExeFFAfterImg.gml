#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha <= 0 instance_destroy()
image_alpha -= 0.035
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
