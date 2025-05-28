
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
        view_yview[0] = 0
    }
    if global.option = 1
    {

        global.menustate = 3
        global.option = 0
    }
    if global.option = 2
    {
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 2
        view_yview[0] = 0
        view_wview = 622
        view_hview = 350
        Sounder.refresh = 1
    }
    if global.option = 3
    {
        scr_voiceinit()
        if global.cheats = 1
        {
            instance_create(0,0,saver)
        }
        instance_create(0,0,speedor)
        if global.DCRP_enabled = 0
        {
            if WeWillNeedThisLater = 1
            {
                discord_free_app()
                discord_free_dll()
            }
        }
        else
        {
            discord_init_dll()
            discord_init_app("1252129963411505222")
            discord_update_presence("IN MAIN MENU","An experimental nb mod",'sprfex','sprfex')
        }
        scr_saveoptions()
        global.suboption = 0
        with Sounder scr_lang_menu_init(global.lang)
        if global.HSmusic = 0 sound_replace(global.S_Chase,working_directory+"/Sound/Chase.mp3",0,0)
        else sound_replace(global.S_Chase,working_directory+"/Sound/updateSounds/Chase.mp3",0,0)
        if global.FFvoices = 1
        {
            sound_replace(global.S_Egg_Speak1,working_directory+"/Sound/updateSounds/Egg_Speak1.wav",0,0)
            sound_replace(global.S_Egg_Speak2,working_directory+"/Sound/updateSounds/Egg_Speak2.wav",0,0)
            sound_replace(global.S_Egg_Speak3,working_directory+"/Sound/updateSounds/Egg_Speak3.wav",0,0)
        }
        else
        {
            sound_replace(global.S_Egg_Speak1,working_directory+"/Sound/Egg_Speak1.wav",0,0)
            sound_replace(global.S_Egg_Speak2,working_directory+"/Sound/Egg_Speak2.wav",0,0)
            sound_replace(global.S_Egg_Speak3,working_directory+"/Sound/Egg_Speak3.wav",0,0)
        }
        sound_delete(global.S_MainMenu)
        sound_stop_all()
        room_goto(87)
    }
}
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 3
if global.option > 3 global.option = 0
if global.cheats < 0 global.cheats = 1
if global.cheats > 1 global.cheats = 0
background_y[0] = view_yview[0]
