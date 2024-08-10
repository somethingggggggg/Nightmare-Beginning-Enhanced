#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.subcnoise = 0
{
    draw_sprite_tiled(sprite_index,image_index,287,166)
}
else
{
    draw_sprite(sprite_index,image_index,view_xview[0]+287,view_yview[0]+166)
}
