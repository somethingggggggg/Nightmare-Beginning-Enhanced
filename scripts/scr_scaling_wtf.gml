if global.performance = 1
{
    i = 0
    repeat(8)
    {
        view_wport[i] = view_wview[i]
        view_hport[i] = view_hview[i]
        i += 1
    }
    //random bullshit go!
    if room = 66 && view_visible[2] = 1
    {
        window_set_region_size(view_wport[2],view_hport[2],0)
        window_resize_buffer(view_wport[2],view_hport[2],1,0)
        //window_set_size(view_wport[2],view_hport[2])
    }
    else if room = 70 && view_visible[1] = 1
    {
        window_set_region_size(view_wport[1],view_hport[1],0)
        window_resize_buffer(view_wport[1],view_hport[1],1,0)
        //window_set_size(view_wport[1],view_hport[1])
    }
    else if room = 70 && view_visible[2] = 1
    {
        window_set_region_size(view_wport[2],view_hport[2],0)
        window_resize_buffer(view_wport[2],view_hport[2],1,0)
        //window_set_size(view_wport[2],view_hport[2])
    }
    else
    {
        window_set_region_size(view_wport[view_current],view_hport[view_current],0)
        window_resize_buffer(view_wport[view_current],view_hport[view_current],1,0)
        //window_set_size(view_wport[view_current],view_hport[view_current])
    }
    if global.fourbythree = 1 window_set_region_size(display_get_width(),display_get_height(),1)
}
else
{
    if window_get_fullscreen() = 1
    {
        //window_set_size(display_get_width(),display_get_height())
        window_set_region_size(display_get_width(),display_get_height(),1)
        window_resize_buffer(display_get_width(),display_get_height(),1,0)
        i = 0
        repeat(8)
        {
            view_wport[i] = display_get_width()
            view_hport[i] = display_get_height()
            i += 1
        }
        if global.fourbythree = 2
        {
            window_set_region_size((display_get_width() / 4) * 3,display_get_height(),1)
        }
    }
    else
    {
        window_set_region_size(1280,720,1)
        window_resize_buffer(1280,720,1,0)
        i = 0
        repeat(8)
        {
            view_wport[i] = 1280
            view_hport[i] = 720
            i += 1
        }
        if global.fourbythree = 2 && room != 0
        {
            window_set_region_size((1280 / 4) * 3,720,1)
        }
    }
}
