#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_alpha[1] = 0
background_alpha[2] = 0
fuckyalpha = 0
scroll = 0
global.lang = 0
global.fourbythree = 1
image_speed = 0.2
hui = 0
anim = 0
global.hackpage = 0
global.dialoguefont = WORD_Font
global.menustate = 0
global.newcontent = 1
global.voicedir = 0
discord_init_dll()
discord_init_app("1252129963411505222")
discord_update_presence("IN MAIN MENU","An experimental nb mod",'sprfex','sprfex')
global.option = 0
global.pause = 0
global.cheats = 0
//reading inis
ini_open("save.ini")
complete = ini_read_real('progress','bestend',0)
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
ini_close()
ass = 0
text = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch global.menustate
{
case 0:
    scr_menunav1()
break;
case 1:
    scr_menunav2()
break;
case 2:
    scr_menunav3()
break;
case 3:
    scr_menunav4()
break;
}
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
