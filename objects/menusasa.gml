#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.lang = 0
hui = 0
global.dialoguefont = WORD_Font
discord_init_dll()
discord_init_app("1252129963411505222")
discord_update_presence("IN MAIN MENU","An experimental nb mod",'sprfex','sprfex')
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.option = 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.cheats = 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
complete = 0

if file_exists("save.ini")
{
    ini_open("save.ini")
    if ini_read_real('progress','bestend',0) = 1
    {
        complete = 1
    }
    global.lang = ini_read_real('options','language',0)
    global.dialoguefont = ini_read_real('options','font',WORD_Font)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=ass
var_value=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=text
var_value=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_up) or mouse_wheel_up()
{
global.option -= 1
sound_play(global.S_MS_Move)
}
if keyboard_check_pressed(vk_down) or mouse_wheel_down()
{
global.option += 1
sound_play(global.S_MS_Move)
}

if keyboard_check_pressed(vk_left)
{
    if global.option = 0
    {
        global.lang -=1
        sound_play(global.S_WellRing)
    }
    if global.option = 1
    {
        if complete = 1
        {
            global.cheats -=1
            sound_play(global.S_WellRing)
        }
        else
        {
            sound_play(global.S_Hit)
            text = 0
            ass = 1
        }
    }
    if global.option = 3
    {
        sound_play(global.S_WellRing)
        if global.dialoguefont = WORD_Font global.dialoguefont = testingfont
        else global.dialoguefont = WORD_Font
    }
}
if keyboard_check_pressed(vk_right) or mouse_check_button_pressed(mb_left)
{
    if global.option = 0
    {
        global.lang +=1
        sound_play(global.S_WellRing)
    }
    if global.option = 1
    {
        if complete = 1
        {
            global.cheats +=1
            sound_play(global.S_WellRing)
        }
        else
        {
            sound_play(global.S_Hit)
            text = 0
            ass = 1
        }
    }
    if global.option = 3
    {
        sound_play(global.S_WellRing)
        if global.dialoguefont = testingfont global.dialoguefont = WORD_Font
        else global.dialoguefont = testingfont
    }
}
if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)
{
    if global.option = 2
    {
        hui = get_string('Input Folder Name',hui)
        execute_file(working_directory+"\mods\"+hui+"\mod.txt")
        text = 1
        ass = 1
    }
    if global.option = 4
    {
    ini_open("save.ini")
    ini_write_real('options','language',global.lang)
    ini_write_real('options','font',global.dialoguefont)
        if global.cheats = 1
        {
            instance_create(0,0,saver)
            instance_create(0,0,speedor)
        }
        room_goto(87)
    }
}
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 4
if global.option > 4 global.option = 0
if global.cheats < 0 global.cheats = 1
if global.cheats > 1 global.cheats = 0
view_yview[0] = (view_yview[0] + (global.option * 32)) / 2 + 64
ass -= 0.01
background_y[0] = view_yview[0]
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
        draw_set_font(font6)
        draw_text(192,128,"LANG")
        draw_sprite(sprite723,global.lang,320,128)
        draw_text(176,192,"CHEATS")
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text(336,192,"ON")
            }
            else
            {
                draw_text(336,192,"OFF")
            }
        }
        else
        {
            draw_text_color(336,192,"OFF",$464646,$464646,$464646,$464646,1)
        }
        draw_text(192,256,"LOAD MOD")
        draw_text(192,320,"FONT")
        if global.dialoguefont = WORD_Font
        {
            draw_text(304,320,"OLD")
        }
        else
        {
            draw_text(304,320,"NEW")
        }
    draw_text(224,384,"APPLY")
switch global.option
{
    case 0:
        draw_text_color(192,128,"LANG",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_sprite(sprite722,global.lang,320,128)
    break;
    case 1:
        draw_text_color(176,192,"CHEATS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text_color(336,192,"ON",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
            else
            {
                draw_text_color(336,192,"OFF",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
        }
        else
        {
            draw_text_color(336,192,"OFF",$464646,$464646,$464646,$464646,1)
        }
    break;
    case 2:
        draw_text_color(192,256,"LOAD MOD",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 3:
        draw_text_color(192,320,"FONT",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        if global.dialoguefont = WORD_Font
        {
            draw_text_color(304,320,"OLD",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_text_color(304,320,"NEW",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 4:
        draw_text_color(224,384,"APPLY",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
}

if text = 1
{
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0],view_yview[0],"MOD LOADED",$00ffff,$00ffff,$00ffff,$005555,ass)
}
else
{
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0],view_yview[0],"COMPLETE THE GAME#ON THE BEST#ENDING FIRST",$00ffff,$00ffff,$00ffff,$005555,ass)
}
