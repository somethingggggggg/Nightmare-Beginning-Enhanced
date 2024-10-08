if myfade < 1 myfade += 0.1
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
if keyboard_check_pressed(vk_escape)
{
    pause = 0
    view_hview = prev_view_hview
    view_wview = prev_view_wview
    global.menustate = 0
    global.option = 0
    //view_xview = prev_view_xview
    //view_yview = prev_view_yview
    sound_stop(global.S_PAUSEMENU)
    scr_saveoptions()
    scr_soundunfuck()
    sprite_delete(sprpausefuck)
    myfade = 0
    instance_activate_all()
}
if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        alarm[0] = 1
    }
    if global.option = 1
    {
        global.menustate = 1
    }
    if global.option = 2
    {
        if global.cheats = 0 or room = 38
        {
            discord_free_app()
            discord_free_dll()
            game_end()
        }
        else
        {
            pause = 0
            view_hview = prev_view_hview
            view_wview = prev_view_wview
            global.menustate = 0
            global.option = 0
            global.T_bossfight = 0
            //view_xview = prev_view_xview
            //view_yview = prev_view_yview
            instance_activate_all()
            sound_stop_all()
            room_goto(38)
        }
    }
}
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 2
if global.option > 2 global.option = 0
