#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if obj_textpopup.instance_count > 1 instance_destroy()
alpha = 2
text = menusasa.text
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if alpha = 0 instance_destroy()
alpha -= 0.01
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.dialoguefont)
draw_set_halign(fa_left)
draw_set_valign(fa_left)
draw_text_color(view_xview[0],view_yview[0],text,$00ffff,$00ffff,$00ffff,$005555,alpha)
