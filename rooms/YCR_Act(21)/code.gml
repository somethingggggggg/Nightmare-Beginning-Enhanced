update_discord_lol()
background_hspeed[0] = -0.5
background_hspeed[1] = -0.5

global.KnuckMeat = false
global.EggMeat = false

if global.KDetection = true
{
instance_create(4960,288,Knuckles)
instance_create(4848,128,Solid)
instance_create(17280,1568,Solid)
}

if global.EDetection = true
{
instance_create(24800,864,ScrapEggman)
view_object[0] = ScrapEggman
sound_loop(global.S_You_Can_t_Run)
sound_loop(global.S_Lift)
}

if global.Deadly_Mode = true && global.TDetection = true
{
sound_loop(global.S_You_Can_t_Run)
instance_create(21184,2272,Tails4)
instance_create(21168,2272,HvostStand)
instance_create(21120,2464,Solid)
view_object[0] = Tails4
with WinRing
{
instance_destroy()
}}

if global.Deadly_Mode = false && global.TDetection = true
{{
view_object[0] = WinRing
sound_loop(global.S_You_Can_t_Run)
WinRing.alarm[0] = 120
}
if instance_exists(KPassed)
{
ScrapGround.sprite_index = sprScrapGroundBlood
}}
