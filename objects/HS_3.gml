#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_alpha = 0.5
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw_sprite_ext(sprite_index,image_index,view_xview[0]+500,view_yview[0]+view_hview[0],image_xscale,image_yscale,image_angle,image_blend,1)
//draw_sprite_stretched_ext(sprite_index,image_index,view_xview[0],view_yview[0],view_wview[0],view_hview[0],image_blend,image_alpha)
draw_sprite_tiled_ext(sprite_index,image_index,view_xview[0]/2,view_yview[0],image_xscale,view_hview[0]/sprite_height,image_blend,image_alpha)
