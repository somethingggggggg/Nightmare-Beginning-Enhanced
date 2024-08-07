#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw_sprite_ext(spr_placeholder, 0, 0, 0, 1000, 1000, 0, c_white, image_alpha)
draw_rect(view_xview,view_yview,view_wview,view_hview,c_white,image_alpha,0)
//draw_rectangle_color(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,c_white,c_white,c_white,c_white,0)
if image_alpha < 1 && visible = true image_alpha += 0.03
if visible = true
{
    Timer.visible = false
}
