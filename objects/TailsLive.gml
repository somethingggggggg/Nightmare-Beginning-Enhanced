#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.TLive >= 3
{
instance_destroy()
}

if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
image_alpha +=0.01
}}

if image_alpha <= 0
{
image_alpha = 0
}
#define Collision_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.TLive += 1
instance_destroy()
#define Collision_Tails2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.TLive += 1
instance_destroy()
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.TLive += 1
instance_destroy()
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.TLive += 1
instance_destroy()
#define Collision_BIG_MEME_KNUX
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Ring);
sound_play(global.S_WellRing)
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Warp)
global.TLive += 1
instance_destroy()
