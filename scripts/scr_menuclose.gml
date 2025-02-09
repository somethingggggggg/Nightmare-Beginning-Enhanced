//bluat
pause = 0
prev_win_w_size = window_get_width()
prev_win_h_size = window_get_height()

view_hview[view_current] = prev_view_hview
view_wview[view_current] = prev_view_wview

Sounder.refresh = 1

global.menustate = 0
global.option = 0
//view_xview = prev_view_xview
//view_yview = prev_view_yview
scr_saveoptions()
scr_soundunfuck()
if global.fourbythree != prevset[0,2]
{
    scr_fourbythreer()
    //scr_scaling_wtf()
}
//if global.performance = 1 or global.performance != prevset[3,0] scr_scaling_wtf();
if global.DCRP_enabled != prevset[5,0]
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
if global.voicedir != prevset[1,0]
{
    scr_voiceunload()
    if global.voicedir != 0 scr_voiceinit()
}
if global.HSmusic != prevset[0,3]
{
    if global.HSmusic = 0 sound_replace(global.S_Chase,working_directory+"/Sound/Chase.mp3",0,0)
    else sound_replace(global.S_Chase,working_directory+"/Sound/updateSounds/Chase.mp3",0,0)
}
sound_stop(global.S_PAUSEMENU)
sprite_delete(sprpausefuck)
myfade = 0
draw_set_alpha(1)
instance_activate_all()
window_set_size(prev_win_w_size,prev_win_h_size)
