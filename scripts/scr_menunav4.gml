if keyboard_check_pressed(vk_up)
{
    global.option -= 1
    sound_play(global.S_MS_Move)
    if global.option < 0
    {
        global.option = ds_list_size(fuckarr)
    }
}
if keyboard_check_pressed(vk_down)
{
    global.option += 1
    sound_play(global.S_MS_Move)
    if global.option > ds_list_size(fuckarr)
    {
        global.option = 0
    }
}
if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        global.menustate = 0
        global.option = 0
        draw_set_halign(fa_left)
        ds_list_destroy(fuckarr)
    }
    else
    {
        if file_exists(working_directory+"\mods\"+ds_list_find_value(fuckarr,global.option-1)+"\mod.txt")
        {
            execute_file(working_directory+"\mods\"+ds_list_find_value(fuckarr,global.option-1)+"\mod.txt")
            text = "MOD LOADED"
            instance_create(0,0,obj_textpopup)
        }
        else
        {
            text = "MOD LOAD FAILED"
            instance_create(0,0,obj_textpopup)
        }
    }
}
scroll = -((((global.option) * 10)+abs(scroll))/2)
