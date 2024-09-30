view_wview = 462
view_hview = 260
if background_alpha[1] > 0
{
    background_alpha[1] -= 0.1
}
if background_alpha[2] > 0
{
    background_alpha[2] -= 0.1
}
if keyboard_check_pressed(vk_up)
{
    global.option -= 1
    sound_play(global.S_MS_Move)
}
if keyboard_check_pressed(vk_down)
{
    global.option += 1
    sound_play(global.S_MS_Move)
}

if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        ds_list_clear(global.voicelist)
        ds_list_add(global.voicelist,"")
        voice_dir = file_find_first(working_directory+"\Sound\voice_*",fa_directory);
        while (voice_dir != "")
        {
            ds_list_add(global.voicelist,voice_dir)
            voice_dir = file_find_next()
        }
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 1
        view_yview[0] = 125
    }
    if global.option = 1
    {
        fuckarr = ds_list_create()
        file_name = file_find_first(working_directory+"\mods\*.*",fa_directory);
        while (file_name != "")
        {
            if file_exists(working_directory+"\mods\"+file_name+"\mod.txt")
            {
                ds_list_add(fuckarr,file_name)
            }
            /*
            suka += 1
            files[suka] = file_name;
            */
            file_name = file_find_next()
        }
        suka = 0
        file_find_close();
        global.menustate = 3
        global.option = 0
    }
    if global.option = 2
    {
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 2
        view_yview[0] = 125
    }
    if global.option = 3
    {
        scr_saveoptions()
        scr_voiceinit()
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
if global.option < 0 global.option = 3
if global.option > 3 global.option = 0
if global.cheats < 0 global.cheats = 1
if global.cheats > 1 global.cheats = 0
ass -= 0.01
background_y[0] = view_yview[0]
