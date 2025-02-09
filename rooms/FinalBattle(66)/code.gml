if global.hardmode != 2
{
    global.rings = 10
    if global.hardmode = 1
    {
        with Ring instance_destroy()
    }
}
else
{
    global.rings = 0
    with Ring
    {
        instance_destroy()
    }
    with FinalBackground
    {
        image_blend = $00ff00
    }
}
update_discord_lol()
