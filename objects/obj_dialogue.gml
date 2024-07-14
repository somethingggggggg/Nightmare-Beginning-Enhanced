#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
message = 0
sprite = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_enter)
{
    switch global.dialoguepage
    {
        case 0:
            message = "W... Who are you?"
            sprite = sprSW_TailsShocked
        break;
        case 0:
            message = "W... Who are you?"
            sprite = sprSW_TailsShocked
        break;
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprite,1,view_xview[0],view_yview[0])
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0]+100, view_yview[0],message,$00ffff,$00ffff,$00ffff,$005555,1)
