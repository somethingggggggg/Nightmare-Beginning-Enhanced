#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha = 2
if instance_exists(menusasa) text = menusasa.text
else text = Sounder.text
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
draw_set_valign(fa_top)
draw_text_color(view_xview[view_current],view_yview[view_current],text,$00ffff,$00ffff,$00ffff,$005555,alpha/2)
