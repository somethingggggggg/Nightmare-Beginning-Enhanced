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
}
update_discord_lol()
