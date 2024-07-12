#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.lang = 0
hui = 0
global.dialoguefont = WORD_Font
global.menustate = 0
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
    global.progressbar = ini_read_real('options','progressbar',0)
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
switch global.menustate
{
case 0:
    scr_menunav1()
break;
case 1:
    scr_menunav2()
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
}
