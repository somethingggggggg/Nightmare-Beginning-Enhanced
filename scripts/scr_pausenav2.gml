if myfade < 1 myfade += 0.1
time += 1
if scr_input_dir_get("up","pressed") or mouse_wheel_up()
{
    global.option -= 1
    sound_play(global.S_MS_Move)
}
if scr_input_dir_get("down","pressed") or mouse_wheel_down()
{
    global.option += 1
    sound_play(global.S_MS_Move)
}
if scr_input_pause()
{
    scr_menuclose()
    /*pause = 0
    //stupid fix because view_current doesn't work
    if room = 66 && view_visible[2] = 1
    {
        view_wview[2] = 640
        view_hview[2] = 360
    }
    else
    {
        view_hview[view_current] = prev_view_hview
        view_wview[view_current] = prev_view_wview
        view_wport[view_current] = prev_view_wport
        view_hport[view_current] = prev_view_hport
        window_set_size(prev_view_wport,prev_view_hport)
    }
    global.menustate = 0
    global.option = 0
    //view_xview = prev_view_xview
    //view_yview = prev_view_yview
    sound_stop(global.S_PAUSEMENU)
    scr_saveoptions()
    scr_soundunfuck()
    sprite_delete(sprpausefuck)
    myfade = 0
    instance_activate_all()*/
}
if scr_input_get("enter","pressed")
{
    if global.option = 0
    {
        scr_menuclose()
    }
    if global.option = 1
    {
        global.menustate = 1
    }
    if global.option = 2
    {
        if global.cheats = 0 or room = 38
        {
            game_end()
        }
        else
        {
            /*pause = 0
            view_hview = prev_view_hview
            view_wview = prev_view_wview
            global.menustate = 0
            global.option = 0
            global.T_bossfight = 0
            //view_xview = prev_view_xview
            //view_yview = prev_view_yview
            sprite_delete(sprpausefuck)
            instance_activate_all()
            sound_stop_all()
            myfade = 0*/
            scr_menuclose()
            sound_stop_all()
            room_goto(38)
        }
    }
}
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 2
if global.option > 2 global.option = 0
if buffer buffer = 0
