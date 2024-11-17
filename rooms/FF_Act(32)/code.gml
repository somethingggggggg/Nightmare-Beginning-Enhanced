update_discord_lol()
//show_message("Get out of here")
global.FDetection = 1
global.TDetection = 0
global.EDetection = 0
global.KDetection = 0
if BL.Eggman_Plot = false
{
    BL.FF_E = false
}
if BL.Knuckles_Plot = false
{
    BL.FF_K = false
}
if global.hardmode = 1
{
    sound_stop_all()
    sound_loop(global.S_Action)
    with FF_Wall
    {
        image_blend = c_red
    }
    with FF_Ground
    {
        image_blend = c_red
    }
    background_color = $000000//7a
    background_blend[0] = $0000b1
    background_blend[1] = $0000b1
    background_blend[2] = $0000b1
    background_blend[3] = $0000b1
}
