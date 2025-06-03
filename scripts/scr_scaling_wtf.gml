var dgw;
dgw = display_get_width()
var dgh;
dgh = display_get_height()
if global.performance = 1
{
    i = 0
    repeat(8)
    {
        view_wport[i] = view_wview[i]
        view_hport[i] = view_hview[i]
        i += 1
    }
    window_resize_buffer(view_wport[view_current],view_hport[view_current],1,0)
    window_set_region_size(view_wport[view_current],view_hport[view_current],0)
    //window_set_size(view_wport[view_current],view_hport[view_current])
    if global.fourbythree = 1 window_set_region_size(dgw,dgh,0)
}
else
{
    if window_get_fullscreen()
    {
        //window_set_region_size(dgw,dgh,0)
        window_set_region_size(view_wview[view_current],view_hview[view_current],0)
        window_resize_buffer(dgw,dgh,1,0)
        i = 0
        repeat(8)
        {
            view_wport[i] = dgw
            view_hport[i] = dgh
            i += 1
        }
        //if global.fourbythree = 2
        //{
        //    window_set_region_size((dgw / 4) * 3,dgh,0)
        //}
    }
    else
    {
        //window_set_region_size(1280,720,0)
        window_set_region_size(view_wview[view_current],view_hview[view_current],0)
        window_resize_buffer(1280,720,1,0)
        i = 0
        repeat(8)
        {
            view_wport[i] = 1280
            view_hport[i] = 720
            i += 1
        }
        //if global.fourbythree = 2 && room != 0
        //{
        //    window_set_region_size((1280 / 4) * 3,720,0)
        //}
    }
    if global.fourbythree = 1 window_set_region_size(dgw,dgh,0)
}
//screen_refresh()
//screen_redraw()
