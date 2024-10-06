#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.TDetection = true or global.T_bossfight = 1
{
    instance_create(112,320,Game_Over_T)
    instance_create(0,305,Game_Over_Exe)
}

if global.KDetection = true
{
    instance_create(336,320,Game_Over_K)
    instance_create(224,310,Game_Over_Exe2)
}

if global.EDetection = true
{
    instance_create(288,320,BigLight)
    instance_create(336,320,Game_Over_E)
    instance_create(224,320,Game_Over_Exe3)
}

if global.FDetection = true
{
    background_visible[0] = true
    instance_create(160,256,Game_Over_FaExe)
    instance_create(224,336,Game_Over_FaKnuckles)
    instance_create(352,336,Game_Over_FaTails)
    instance_create(336,336,HvostBlack)
}
sound_loop(global.S_Continue_S)
