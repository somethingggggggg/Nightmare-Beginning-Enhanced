if background_alpha[1] > 0
{
    background_alpha[1] -= 0.1
}
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

if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)
{
    if global.option = 0
    {
        global.option = 0
        global.menustate = 1
        view_yview[0] = 125
    }
    if global.option = 1
    {
        hui = get_string('Input Folder Name',hui)
        execute_file(working_directory+"\mods\"+hui+"\mod.txt")
        text = 1
        ass = 1
    }
    if global.option = 2
    {
    ini_open("options.ini")
    ini_write_real('options','language',global.lang)
    ini_write_real('options','font',global.dialoguefont)
    ini_write_real('options','progressbar',global.progressbar)
    ini_close()
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
if global.option < 0 global.option = 2
if global.option > 2 global.option = 0
if global.cheats < 0 global.cheats = 1
if global.cheats > 1 global.cheats = 0
ass -= 0.01
background_y[0] = view_yview[0]
