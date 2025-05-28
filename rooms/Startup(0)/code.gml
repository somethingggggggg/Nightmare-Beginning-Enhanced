window_resize_buffer(display_get_width(),display_get_height(),1,0)
i = 0
repeat(8)
{
    view_wport[i] = display_get_width()
    view_hport[i] = display_get_height()
    i += 1
}
global.TLive = 1
global.ELive = 1
global.KLive = 1
global.FLive = 1
global.SLive = global.TLive + global.ELive + global.KLive
global.TR = 0
global.TDetection = false
global.KDetection = false
global.EDetection = false
global.FDetection = false
global.Deadly_Mode = false
global.Final = false
global.Difficult = 1
global.Suicide = false
global.CheckPoint = false
global.rings = 0
global.BestEnd = false
global.GoodEnd = false
global.Hit = 0
global.EasterEggState = 0
global.FireUsage = 0

global.Debug_mode = false
global.Time = 0
background_hspeed[0] = 0.5
background_vspeed[1] = 0.5
background_hspeed[2] = 0.25
background_vspeed[2] = 0.25
window_set_caption("Sonic.exe: Nightmare Beginning ENHANCED")
window_set_showicons(true)
