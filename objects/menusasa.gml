#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_alpha[1] = 0
background_alpha[2] = 0
fuckyalpha = 0
scrollcounter = 0
scroll = 0
Notavalmessage = "Unavailable in this version"
global.lang = 0
global.fourbythree = 1
image_speed = 0.2
hui = 0
anim = 0
global.SPRSONFONT = font_add_sprite(spr_son1font,ord('A'),1,1)
global.SMALLSONFONT = font_add_sprite(spr_smallsonfont,ord('/'),0,0)
global.DESKFONT = font_add_sprite(sprFontCount,ord('-'),0,0)
global.hackpage = 0
global.dialoguefont = WORD_Font
global.menustate = 0
global.newcontent = 1
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
global.pause = 0
global.cheats = 0
//reading inis
ini_open("save.ini")
global.complete = ini_read_real('progress','bestend',0)
comppercent = ((ini_read_real('progress','bestend',0) + ini_read_real('progress','goodend',0) + ini_read_real('progress','worstend',0) + ini_read_real('progress','badend',0) + ini_read_real('progress','eggend',0) + ini_read_real('progress','tailsend',0))/6)*100
ini_close()
ini_open("options.ini")
global.fourbythree = ini_read_real('options','fourbythree',0)
global.subcnoise = ini_read_real('options','subcnoise',1)
global.newcontent = ini_read_real('options','newcontent',1)
global.showfps = ini_read_real('options','showfps',0)
global.lang = ini_read_real('options','language',0)
global.dialoguefont = ini_read_real('options','font',WORD_Font)
global.progressbar = ini_read_real('options','progressbar',0)
global.cheats = ini_read_real('options','cheats',0)
global.voicedir = ini_read_real('options','voicedir',0)
global.DCRP_enabled = ini_read_real('options','DCRP_enabled',1)
global.RG_final_boss = ini_read_real('options','RG_final_boss',1)
global.BL_fliter = ini_read_real('options','BL_fliter',1)
ini_close()
texture_set_interpolation(global.BL_fliter)
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
//global.S_Final_Boss_RG

option[1] = global.lang
option[2] = global.cheats
option[3] = global.dialoguefont
option[4] = global.progressbar
option[5] = global.showfps
option[6] = global.newcontent
option[7] = global.subcnoise
option[8] = global.fourbythree
option[9] = global.voicedir
option[10] = global.DCRP_enabled
option[11] = global.RG_final_boss
option[12] = global.BL_fliter

optionblocked[1] = 0
optionblocked[2] = 0
optionblocked[3] = 0
optionblocked[4] = 0
optionblocked[5] = 0
optionblocked[6] = 0
optionblocked[7] = 0
optionblocked[8] = 0
optionblocked[9] = 0
optionblocked[10] = 0
optionblocked[11] = 0
optionblocked[12] = 0

optionname[0] = "Back"
optionname[1] = "Language"
optionname[2] = "Cheats"
optionname[3] = "Font"
optionname[4] = "FF progressbar"
optionname[5] = "Show FPS"
optionname[6] = "New content"
optionname[7] = "SM Noise"
optionname[8] = "4:3 mode"
optionname[9] = "Voiceover"
optionname[10] = "Enable DCRP"
optionname[11] = "REALLY GOOD BOSS FIGHT MUSIC"
optionname[12] = "Billineal filtering"

optiondesc[0] = ""
optiondesc[1] = "Pick your language"
optiondesc[2] = "Enable debug mode and some cheats accecible with the numpad (enable numlock on your keyboard)"
optiondesc[3] = "Pick between original NB font (korinna) and new NU font (pallete)"
optiondesc[4] = "Toggle the progressbar in Fatal Fog"
optiondesc[5] = "Show FPS"
optiondesc[6] = "Toggle new content on or off"
optiondesc[7] = "Change how overlayed noise works in subconcious mind"
optiondesc[8] = "Change the screen resolution back to 4:3#VERY EXPERIMENTAL"
optiondesc[9] = "Choose the voiceover you want (you can add your own by naming a folder voice_ )"
optiondesc[10] = "Shows to other people that you are playing NBE"
optiondesc[11] = "suka blyat"
optiondesc[12] = "blurs your fucking game so it looks like shit"

optionstate[0,0] = ""

optionstate[1,0] = "English"
optionstate[1,1] = "Russian"
optionstate[1,2] = "Italian"

optionstate[2,0] = "off"
optionstate[2,1] = "on"

optionstate[3,WORD_Font] = "Old"
optionstate[3,testingfont] = "New"

optionstate[4,0] = "off"
optionstate[4,1] = "on"

optionstate[5,0] = "off"
optionstate[5,1] = "on"

optionstate[6,0] = "off"
optionstate[6,1] = "on"

optionstate[7,0] = "Original"
optionstate[7,1] = "Camera Follow"

optionstate[8,0] = "off"
optionstate[8,1] = "Stretch"
optionstate[8,2] = "Black Bars"

optionstate[10,0] = "off"
optionstate[10,1] = "on"

optionstate[11,0] = "off"
optionstate[11,1] = "on"

optionstate[12,0] = "off"
optionstate[12,1] = "on"

menulength = 13
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch global.menustate
{
    case 0: scr_menunav1() break;
    case 1: scr_menunav2() break;
    case 2: scr_menunav3() break;
    case 3: scr_menunav4() break;
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
        scr_menudraw1()
    break;
    case 1:
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
draw_set_font(global.dialoguefont)
switch text
{
    case 0: draw_text_color(view_xview[0],view_yview[0],"COMPLETE THE GAME#ON THE BEST#ENDING FIRST",$00ffff,$00ffff,$00ffff,$005555,ass) break;
    case 1: draw_text_color(view_xview[0],view_yview[0],"MOD LOADED",$00ffff,$00ffff,$00ffff,$005555,ass) break;
    case 2: draw_text_color(view_xview[0],view_yview[0],"MOD LOAD FAILED",$00ffff,$00ffff,$00ffff,$005555,ass) break;
}
ass -= 0.01
