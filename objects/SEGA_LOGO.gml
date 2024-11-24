#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.4
Act = 0
#define Alarm_0
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
        sound_replace(global.S_Mindfuckery,working_directory+"/Sound/GrassSkirtChase.mp3",0,0)
        sound_play(global.S_Pingas)
        with Sounder
        {
            str_back = "return to hell"
            str_opt = "nastroiki"
            str_quit = "run away in fear"
            str_select = "YOU FUCKING CHEATER"
        }
    }
    global.hardmode = 1
}
if string_pos('mir',keyboard_string) != 0
{
    if global.mirrored = 0
    {
        sound_play(global.S_CrackNeck)
    }
    global.mirrored = 1
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
sound_play(global.S_Sega)
image_speed = 0
image_index = 24
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=240
arg1=0
*/
