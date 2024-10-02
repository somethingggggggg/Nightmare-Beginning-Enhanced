#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
timeOFF = 0
timer = 0
t = 0
text = "За что ты меня избиваешь?!"
p = 0
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Knuckles.Punch = 1
{
    timeOFF = 1
    timer += 0.2
}
if (timer == 30 && !instance_exists(Cream_529) && !instance_exists(Cream_531))
{
    Easter_Sequel.sprite_index = sprEaster_Sequel_1
    instance_create(x, y, Cream_529)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw_set_color(c_orange)
draw_set_font(global.dialoguefont)
draw_set_halign(fa_left)
if text = "Я видела её смерть.. Я не хочу умирать!"
{
    draw_sprite_ext(sprTailsJumpMask, 1, (view_xview[0] + 55), (view_yview[0] + 35), 15, 1, 0, c_black, 1)
    draw_text_color((view_xview[0] + 26 + irandom_range(-1,1)), (view_yview[0] + 25 + irandom_range(-1,1)), string_copy(text, 0, t),c_orange,c_orange,c_orange,c_orange,1)
}
else
{
    draw_sprite_ext(sprTailsJumpMask, 1, (view_xview[0] + 55 + p), (view_yview[0] + 35), 15, 1, 0, c_black, 1)
    draw_text_color((view_xview[0] + 26 + p), (view_yview[0] + 25 - p), string_copy(text, 0, t),c_orange,c_orange,c_orange,c_orange,1)
}
