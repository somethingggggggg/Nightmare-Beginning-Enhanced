#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.4
Act = 0
moveBlya = 0
a = 0
view_xview[0] = x - (view_wview[0]/2)
view_yview[0] = y - (view_hview[0]/2)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(1)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=STP_Room(3)
arg1=21
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 4
{
    global.Final = true
}
if string_pos('hard',keyboard_string) != 0 or string_pos('рфкв',keyboard_string) != 0 or (current_day = 1 && current_month = 4)
{
    if global.hardmode = 0
    {
        show_message("SUPER BRUTAL S EX PLUS PIZDEC MODE模式被激活##你的行为很随意。")
        sound_replace(global.S_Mindfuckery,working_directory+"/Sound/HardMode/GrassSkirtChase.mp3",0,0)
        sound_replace(global.S_PAUSEMENU,working_directory+"/Sound/HardMode/mapMusPostal2.mp3",0,0)
        sound_replace(global.S_Egg_Sound,working_directory+"/Sound/HardMode/Alternative italian.wav",0,0)
        sound_play(global.S_Pingas)
        with Sounder
        {
            str_back = "return to hell"
            str_opt = "nastroiki"
            str_quit = "run away in fear"
            str_select = "YOU FUCKING CHEATER"
        }
    }
    global.hardmode = 2
}
if string_pos('mir',keyboard_string) != 0
{
    if global.mirrored = 0
    {
        sound_play(global.S_CrackNeck)
    }
    global.mirrored = 1
}
moveBlya += 4
if moveBlya > 235 && a=0
{
    a = 1
    sound_play(global.S_Sega)
    image_speed = 0
    image_index = 24
    alarm[0] = 240
}
/*if keyboard_string = "jaiz"
{
    room_goto(90)
}
#define Keyboard_65
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 3
{
    global.Time += 1
    if global.Time >= 4
    {
        global.Debug_mode = true
    }
    sound_play_ex(global.S_WellRing,1,1+(global.Time-1)/4,0)
    //sound_play(global.S_WellRing)
    Act = 4
}
#define Keyboard_69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
Act = 2
}
#define Keyboard_71
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 2
{
Act = 3
}
#define Keyboard_83
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Sega)
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
sound_play(global.S_Sega)
image_speed = 0
image_index = 24
alarm[0] = 240
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var pos;
pos = min(x-94+moveBlya,x+94+17)

draw_set_alpha(1)
draw_self()
if transition_kind != 0 exit;
draw_set_alpha((188-(moveBlya-141))/94)
draw_sprite(sprSEGA_logo_cover,0,pos,y)
draw_set_color(c_white)
draw_rectangle(x-94,y-30,pos-17,y+30,0)
draw_rectangle(pos+17,y-30,x+94,y+30,0)
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
transition_kind=21
room_goto(3)
