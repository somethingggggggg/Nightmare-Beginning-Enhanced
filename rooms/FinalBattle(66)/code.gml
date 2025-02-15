
global.rings = 10
if global.hardmode > 0
{
    with Ring instance_destroy()
    if global.hardmode = 2
    {
        global.rings = 0
        with FinalBackground image_blend = $00ff00
    }
}
update_discord_lol()
