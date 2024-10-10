#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
image_speed = 0.1
alarm[0] = 90
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -image_xscale
alarm[0] = 90
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale = 1 draw_sprite_tiled_ext(sprite_index,image_index,93,98,image_xscale,image_yscale,c_white,image_alpha)
else
{
    draw_sprite_tiled_ext(sprESImsorry,image_index,93,98,1,image_yscale,c_white,image_alpha)
}
