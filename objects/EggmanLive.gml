#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.ELive >= 3
{
instance_destroy()
}
#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.ELive += 1
instance_destroy()
#define Collision_ScrapEggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.ELive += 1
instance_destroy()
#define Collision_BIG_MEME_KNUX
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Ring);
sound_play(global.S_WellRing)
