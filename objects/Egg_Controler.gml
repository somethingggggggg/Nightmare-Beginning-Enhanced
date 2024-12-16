#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
//drawAngle = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 2
#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
Act = 1
alarm[0] = 240
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
draw_self()
if Act = 1
{
    draw_set_font(global.dialoguefont)
    draw_set_halign(fa_left)
    draw_text_color(view_xview[0]+150,view_yview[0]+50,"The lower lights are turned off",$00ffff,$00ffff,$00ffff,$005555,1)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=526
invert=0
arg0=FONT
arg1=0
*/
