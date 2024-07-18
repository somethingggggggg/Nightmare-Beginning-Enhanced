#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
message = 0
spritedial = 0
scr_hackdialget()
global.pause = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_enter)
{
    global.hackpage += 1
    scr_hackdialget()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw_sprite_general(spr_hackerycontin,0,view_xview,view_yview[0],view_wview[0],view_hview[0],view_xview,view_yview[0],1,1,0,$ffffff,$ffffff,$ffffff,$ffffff,1)
//draw_sprite_stretched(spr_hackerycontin,0,view_xview,view_yview[0],view_wview[0],view_hview[0])
//draw_sprite(spr_hackerycontin,0,view_xview,view_yview[0])
draw_sprite(spritedial,0,view_xview[0],view_yview[0])
draw_set_font(global.dialoguefont)
draw_text_ext_color(view_xview[0]+100, view_yview[0],message,16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
//draw_text_color(view_xview[0]+100, view_yview[0],message,$00ffff,$00ffff,$00ffff,$005555,1)
