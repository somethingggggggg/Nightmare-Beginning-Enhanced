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
    window_set_region_size(view_wport[view_current],view_hport[view_current],1)
    window_resize_buffer(view_wport[view_current],view_hport[view_current],1,0)
    window_set_size(view_wport[view_current],view_hport[view_current])
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
    }
}
