//bluat
pause = 0
prev_win_w_size = window_get_width()
prev_win_h_size = window_get_height()
if room = 66 && view_visible[2] = 1
{
    view_wview[2] = 640
    view_hview[2] = 360
}
else
{
    view_hview[view_current] = prev_view_hview
    view_wview[view_current] = prev_view_wview
    //view_wport[view_current] = prev_view_wport
    //view_hport[view_current] = prev_view_hport
    //window_set_size(prev_view_wport,prev_view_hport)
    //window_set_region_size(prev_view_wport,prev_view_hport,0)
    //window_resize_buffer(prev_view_wport,prev_view_hport,1,0)
    //window_set_size(prev_view_wport,prev_view_hport)
}

global.menustate = 0
global.option = 0
//view_xview = prev_view_xview
//view_yview = prev_view_yview
scr_saveoptions()
scr_soundunfuck()
if global.fourbythree != prevset[8]
{
    scr_fourbythreer()
    scr_scaling_wtf()
}
if global.performance != prevset[12] scr_scaling_wtf();
if global.DCRP_enabled != prevset[10]
{
    if global.DCRP_enabled = 0
    {
        discord_free_app()
        discord_free_dll()
    }
    else
    {
        discord_init_dll()
        discord_init_app("1252129963411505222")
        update_discord_lol()
    }
}
if global.voicedir != prevset[9]
{
    scr_voiceunload()
    if global.voicedir != 0 scr_voiceinit()
}
sound_stop(global.S_PAUSEMENU)
sprite_delete(sprpausefuck)
myfade = 0
draw_set_alpha(1)
instance_activate_all()
window_set_size(prev_win_w_size,prev_win_h_size)
