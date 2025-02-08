#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
hardhue = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.hardmode = 2
{
    hardhue += 1
    if hardhue > 360 hardhue = 0
    image_blend = make_color_hsv_standard(hardhue,100,100)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.subcnoise = 0
{
    if global.hardmode != 2 draw_sprite_tiled(sprite_index,image_index,287,166)
    else draw_sprite_tiled_ext(sprite_index,image_index,287,166,1,1,image_blend,1)
}
else
{
    if global.hardmode != 2 draw_sprite(sprite_index,image_index,view_xview[0]+287,view_yview[0]+166)
    else draw_sprite_ext(sprite_index,image_index,view_xview[0]+287,view_yview[0]+166,1,1,0,image_blend,1)
}
