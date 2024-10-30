if global.hardmode = 0
{
    global.rings = 10
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
