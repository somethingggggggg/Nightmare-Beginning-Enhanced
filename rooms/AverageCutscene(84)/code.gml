sound_play(global.S_AverageEndings)
ini_open("save.ini")
if BL.AEC_K = true
{
    background_visible[1] = true
    background_vspeed[1] = 0.4
    background_visible[2] = true
    background_vspeed[2] = 1
    instance_create(384,416,AEC_Knuckles)
    instance_create(496,96,AEC_Amy)
    instance_create(528,144,HZ_1)
    view_object[0] = AEC_Knuckles
    if global.cheats = 0 ini_write_real('progress','knuckend',1)
}

if BL.AEC_T = true
{
    background_visible[1] = true
    background_hspeed[1] = -1
    background_visible[3] = true
    background_hspeed[3] = -5
    background_blend[3] = $ff8080//$804040
    instance_create(224,410,AEC_Tails)
    with AEC_Tails image_blend = $ff8080//$804040
    instance_create(200,410,HvostStand)
    with HvostStand image_blend = $ff8080//$804040
    instance_create(496,400,AEC_Sonic)
    view_object[0] = AEC_Tails
    if global.cheats = 0 ini_write_real('progress','tailsend',1)
}

if BL.AEC_E = true
{
    background_visible[0] = true
    background_hspeed[0] = 1.5
    background_visible[4] = true
    background_hspeed[4] = 5
    instance_create(416,400,AEC_Metal)
    instance_create(96,392,AEC_Eggman)
    view_object[0] = AEC_Metal
    if global.cheats = 0 ini_write_real('progress','eggend',1)
}
ini_close()
