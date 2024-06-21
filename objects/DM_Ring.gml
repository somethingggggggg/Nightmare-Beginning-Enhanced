#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.1;
#define Collision_BIG_MEME_KNUX
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Ring);
sound_play(global.S_WellRing)
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Ring);
global.rings += 1
sound_play(global.S_WellRing)
