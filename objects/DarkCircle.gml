#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw_sprite(sprDarkCircle, 0, view_xview[0], view_yview[0])
if global.performance = 1
{
    if global.Tails_mode = 1 draw_sprite_ext(sprDarkCircle, 0, view_xview[0], view_yview[0], view_wview[0]/462, view_hview[0]/260, 0, c_white, 1)
    else draw_sprite_ext(sprLightCircle, 0, view_xview[0], view_yview[0], view_wview[0]/461, view_hview[0]/260, 0, c_red, 1)
}
else
{
    if global.Tails_mode = 1 draw_sprite_stretched_ext(sprDarkCircle, 0, view_xview[0], view_yview[0], view_wview[0]+0.5, view_hview[0]+0.5, c_white, 1)
    else draw_sprite_stretched_ext(sprLightCircle, 0, view_xview[0], view_yview[0], view_wview[0]+0.5, view_hview[0]+0.5, c_red, 1)
}
