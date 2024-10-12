#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=119
applies_to=self
invert=0
arg0=Race_Path
arg1=9
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
alarm[0] = 180
drawAngle = 0
Act = 0

if global.Difficult = 1
{
path_speed = 9
}

if global.Difficult = 2
{
path_speed = 10
}

if global.Difficult = 3
{
path_speed = 11
}

if global.Difficult = 4
{
path_speed = 11.5
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ExePlayer.Bot = 1
sound_loop(global.S_Exe_Battle)
Act = 1
alarm[1] = 180
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Other_8
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
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
if Act = 1
{
    draw_set_font(global.SPRSONFONT)
    draw_set_halign(fa_center)
    draw_text_color(view_xview[0]+view_wview[0]/2,view_yview[0]+50,"Win the race!",$5050cf,$5050cf,$5050cf,$5050cf,1)
    draw_set_halign(fa_left)
}
if instance_exists(ExePlayer)
{
    if Act = 3 && ExePlayer.Bot != 7
    {
        draw_text_color(view_xview[0]+50,view_yview[0]+50,"Try again     or     come to the finish line#1 - Easy#2 - Normal#3 - Hard#4 - Gotta go fast",$5050cf,$5050cf,$5050cf,$5050cf,1)
        font_get_name(FONT)
    }
}
