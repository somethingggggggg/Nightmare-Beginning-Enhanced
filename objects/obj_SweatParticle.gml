#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1
hspeed = -1 * EGGBot.image_xscale + global.vel
vspeed = -1
image_alpha = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha = 0 instance_destroy()
image_alpha -= 0.05
