if keyboard_check_pressed(vk_up) or mouse_wheel_up()
{
    global.option -= 1
    sound_play(global.S_MS_Move)
    if global.option < 0
    {
        global.option = 0
    }
}
if keyboard_check_pressed(vk_down) or mouse_wheel_down()
{
    global.option += 1
    sound_play(global.S_MS_Move)
    if global.option > ds_list_size(fuckarr)-2
    {
        global.option = ds_list_size(fuckarr)-2
    }
}
if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        global.menustate = 0
        global.option = 0
    }
    else
    {
        if file_exists(working_directory+"\mods\"+ds_list_find_value(fuckarr,global.option+1)+"\mod.txt")
        {
            execute_file(working_directory+"\mods\"+ds_list_find_value(fuckarr,global.option+1)+"\mod.txt")
            text = 1
        }
        else
        {
            text = 2
        }
        ass = 1
    }
}
