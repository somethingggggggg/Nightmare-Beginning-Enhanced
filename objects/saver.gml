#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=save_name
var_value=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_numpad1)
{
    save_name = get_string('Input Savefile Name',save_name)
    if !file_exists(working_directory+"/"+save_name+".nbesave") //save_name != file_find_first(working_directory+save_name,0)//("Sonic-exe NB Enhanced.exe")
    {
        scr_gamesave(save_name)
    }
    else
    {
        if show_message_ext("Are you sure that you want to rewrite the save?","no","yes","cancel") == 2
        {
            scr_gamesave(save_name)
        }
    }
}
if keyboard_check_pressed(vk_numpad4)
{
    save_name = get_string('Input Savefile Name',save_name)
    scr_gameload(save_name)
}
if keyboard_check_pressed(vk_numpad2) scr_gamesave("save2")
if keyboard_check_pressed(vk_numpad3) scr_gamesave("save3")
if keyboard_check_pressed(vk_numpad5) scr_gameload("save2")
if keyboard_check_pressed(vk_numpad6) scr_gameload("save3")

if keyboard_check_pressed(vk_numpad7)
{
    assiny = 0
    assiny = get_integer('Input room number, input 999 for room list',assiny)
    i = 0
    roomstr = ""
    if assiny = 999
    {
        rooms = ds_list_create()
        repeat(room_last+1)
        {
            if room_exists(i) ds_list_add(rooms,room_get_name(i))
            i += 1
        }
        i = 0
        repeat(ds_list_size(rooms))
        {
            roomstr = roomstr+"#"+ds_list_find_value(rooms,i)
            i += 1
        }
        show_message(roomstr)
        ds_list_destroy(rooms)
    }
    else
    {
        if room_exists(assiny) room_goto(assiny)
        else
        {
            rooms = ds_list_create()
            repeat(room_last+1)
            {
                if room_exists(i) ds_list_add(rooms,room_get_name(i))
                i += 1
            }
            i = 0
            repeat(ds_list_size(rooms))
            {
                roomstr = roomstr+"#"+ds_list_find_value(rooms,i)
                i += 1
            }
            show_message(roomstr)
            ds_list_destroy(rooms)
        }
    }
}

if keyboard_check_pressed(vk_numpad9)
{
    show_message(string(room)+"#"+room_get_name(room))
}
#define Keyboard_104
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=assinylives
var_value=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
assinylives = get_integer('input lives number',assinylives)
global.TLive = assinylives
global.KLive = assinylives
global.ELive = assinylives
global.FLive = assinylives
global.SLive = assinylives
