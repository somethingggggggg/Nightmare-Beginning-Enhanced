if global.TDetection = true
{
    view_object[0] = WinRing
    sound_loop(global.S_You_Can_t_Run)
    alarm[0] = 120
}
if instance_exists(KPassed)
{
    ScrapGround.sprite_index = sprScrapGroundBlood
}
