#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(KPassed) or instance_exists(EPassed)
{
    sprite_index = sprHZ_2_EveningNew
}

if instance_exists(KPassed) && instance_exists(EPassed)
{
    sprite_index = sprHZ_2_Night
}
scrollX = x
image_speed = 0.15
//eblanremennaia = x;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room = 8
{
    scrollX = (view_xview[0] / 4);
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_tiled_ext(sprite_index,image_index,scrollX,view_yview[view_current]-20/*y+141*/,1,1,c_white,1)
//scr_draw_sprite_tiled_area(sprite_index,image_index,scrollX,0,0,0,room_width,room_height)
