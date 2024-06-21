#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.KLive >= 3
{
instance_destroy()
}

if global.TDetection = true
{
instance_destroy()
}
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.KLive += 1
instance_destroy()
#define Collision_BIG_MEME_KNUX
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Ring);
sound_play(global.S_WellRing)
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.KLive += 1
instance_destroy()
