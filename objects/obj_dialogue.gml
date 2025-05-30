#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
message = 0
dialsprite = 0
scr_dialget()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if scr_input_get("enter","pressed")
{
    global.dialoguepage += 1
    scr_dialget()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(dialsprite,1,view_xview[0],view_yview[0])
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0]+100, view_yview[0],message,$00ffff,$00ffff,$00ffff,$005555,1)
