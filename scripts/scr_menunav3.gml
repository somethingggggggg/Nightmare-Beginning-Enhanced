if background_alpha[1] > 0
{
    background_alpha[1] -= 0.1
}
if background_alpha[2] < 1
{
    background_alpha[2] += 0.1
}
if scr_input_get("enter","pressed")
{
    sound_play(global.S_Ring)
    global.option = 0
    global.menustate = 0
    view_yview[0] = 0
    view_wview = 462
    view_hview = 260
    scr_scaling_wtf()
}
credScroll += (scr_input_dir_get("up","check") - scr_input_dir_get("down","check")) * 4
credScroll = clamp(credScroll,-85,25)
