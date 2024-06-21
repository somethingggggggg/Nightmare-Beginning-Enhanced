#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(GoI) && instance_exists(GoI_2) && instance_exists(GoI_3)
{
sound_play(global.S_Warp)
instance_create(320,240,FF_All)
}

if instance_exists(GoI) && instance_exists(GoI_2) && !instance_exists(GoI_3)
{
sound_play(global.S_Warp)
instance_create(320,240,FF_TK)
}

if instance_exists(GoI) && !instance_exists(GoI_2) && instance_exists(GoI_3)
{
sound_play(global.S_Warp)
instance_create(320,240,FF_TE)
}
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=FF_Act(32)
arg1=21
*/
