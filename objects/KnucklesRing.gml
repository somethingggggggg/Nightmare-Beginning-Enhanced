#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_NoiceKS)
sound_stop(global.S_Mindfuckery)
sound_play(global.S_Warp2)
sound_kind_volume(1,1)
with Knuckles
{
instance_destroy()
}
instance_change(KnucklesRingOut,KnucklesRing)
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_Mindfuckery)
sound_play(global.S_Warp2)
with Tails4
{
instance_destroy()
}

with HvostStand
{
instance_destroy()
}
instance_change(KnucklesRingOut,KnucklesRing)
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_Mindfuckery)
sound_play(global.S_Warp2)
with DM_Sonic
{
instance_destroy()
}
instance_change(KnucklesRingOut,KnucklesRing)
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_Mindfuckery)
sound_play(global.S_Warp2)
with DM_Tails
{
instance_destroy()
}

with HvostStand
{
instance_destroy()
}
instance_change(KnucklesRingOut,KnucklesRing)
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_Mindfuckery)
sound_play(global.S_Warp2)
with DM_Knuckles
{
instance_destroy()
}

instance_change(KnucklesRingOut,KnucklesRing)
