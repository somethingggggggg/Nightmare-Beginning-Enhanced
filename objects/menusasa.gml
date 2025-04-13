#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_alpha[1] = 0
background_alpha[2] = 0
credArr[0] = "HELL'S ENCYCLOPEDIA#PROGRAMMER"
credArr[1] = "NICK ZACH#SPRITER"
credArr[2] = "DANIK#SPRITE HELP"
credScroll = 0
time = 0
fuckyalpha = 0
scrollcounter = 0
scroll = 0
HorizScroll = 0
autoscroll = 0
Notavalmessage = "Unavailable"
global.lang = 0
global.fourbythree = 1
image_speed = 0.2
hui = 0
//anim = 0
global.SPRSONFONT = font_add_sprite(spr_son1font,ord('A'),1,1)
global.SMALLSONFONT = font_add_sprite(spr_smallsonfont,ord('-'),0,0)
global.DESKFONT = font_add_sprite(sprFontCount,ord('-'),0,0)

global.Menufont = 0
global.hackpage = 0
global.dialoguefont = WORD_Font
global.menustate = 0
global.voicedir = 0
global.voicelist = ds_list_create()
ds_list_add(global.voicelist,"")
voice_dir = file_find_first(working_directory+"\Sound\voice_*",fa_directory);
while (voice_dir != "")
{
    ds_list_add(global.voicelist,voice_dir)
    voice_dir = file_find_next()
}
global.option = 0
global.suboption = 0
global.pause = 0
global.cheats = 0
//reading inis
scr_load_inis()
texture_set_interpolation(global.BL_filter)
if global.DCRP_enabled = 1
{
    discord_init_dll()
    discord_init_app("1252129963411505222")
    discord_update_presence("IN MAIN MENU","An experimental nb mod",'sprfex','sprfex')
}
if global.voicedir > ds_list_size(global.voicelist) global.voicedir = 0
ass = 0
text = 0

i = 0
global.valueweneed = 0

optionVarName[0,0] = "lang"
optionVarName[1,0] = "voicedir"
optionVarName[2,0] = "showfps"
optionVarName[3,0] = "performance"
optionVarName[4,0] = "OrigCutscene"
optionVarName[5,0] = "DCRP_enabled"
optionVarName[6,0] = "vidCutscn"

optionVarName[0,1] = "cheats"
optionVarName[1,1] = "newcontent"
optionVarName[2,1] = "Eggmovement"
optionVarName[3,1] = "DropDashEnabled"
optionVarName[4,1] = "FlightCancelType"
optionVarName[5,1] = "EggLvl"

optionVarName[0,2] = "fourbythree"
optionVarName[1,2] = "dialoguefont"
optionVarName[2,2] = "progressbar"
optionVarName[3,2] = "subcnoise"
optionVarName[4,2] = "BL_filter"

optionVarName[0,3] = "HSmusic"
optionVarName[1,3] = "FFvoices"

optionVarName[0,4] = ""
optionVarName[1,4] = ""

optionblocked[0,0] = 0
optionblocked[1,0] = 0
optionblocked[2,0] = 0
optionblocked[3,0] = 0
optionblocked[4,0] = 0
optionblocked[5,0] = 0
optionblocked[6,0] = 0

if global.complete = 1 optionblocked[0,1] = 0
else optionblocked[0,1] = 1
optionblocked[1,1] = 1
optionblocked[2,1] = 0
optionblocked[3,1] = 0
optionblocked[4,1] = 0
optionblocked[5,1] = 0

optionblocked[0,2] = 0
optionblocked[1,2] = 0
optionblocked[2,2] = 0
optionblocked[3,2] = 0
optionblocked[4,2] = 0

optionblocked[0,3] = 0
optionblocked[1,3] = 0

optionblocked[0,4] = 0
optionblocked[1,4] = 0

scr_lang_menu_init(global.lang)

menulength[0] = 7
menulength[1] = 6
menulength[2] = 5
menulength[3] = 2
menulength[4] = 2

//variable_global_set("lang",1)
//if global.lang = 1 show_message('yes')
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch global.menustate
{
    case 0: scr_menunav1() break;
    case 1: scr_menunav2(0) break;
    case 2: scr_menunav3() break;
    case 3: scr_menunav4() break;
}

if keyboard_check_pressed(ord("Q")) && debug_mode = 1
{
    ini_open("save.ini")
    ini_write_real('progress','badend',1)
    ini_write_real('progress','worstend',1)
    ini_write_real('progress','bestend',1)
    ini_write_real('progress','goodend',1)
    ini_write_real('progress','knuckend',1)
    ini_write_real('progress','tailsend',1)
    ini_write_real('progress','eggend',1)
    ini_close()
    optionblocked[0,1] = 0
    global.complete = 1
}
if global.menustate = 0
{
    ass -= 0.01
}
else
{
    ass += 0.01
}
scrollcounter += 0.5
if scrollcounter > 120 scrollcounter = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch global.menustate
{
    case 0:
        ass -= 0.05
        //if (live_call(scr_menudraw1)) return live_result;
        scr_menudraw1()
    break;
    case 1:
        ass += 0.05
        draw_sprite_tiled_ext(spr_NBRsomething,0,0,-120+scrollcounter,1,1,c_white,ass)
        scr_menudraw2()
    break;
    case 2:
        //execute_file(working_directory+"/script.txt")
        scr_menudraw3()
    break;
    case 3:
        scr_menudraw4()
    break;
}
if ass > 1 ass = 1
if ass < 0 ass = 0
draw_set_font(global.dialoguefont)
