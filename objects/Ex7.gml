#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
if Knuckles.sprite_index = sprKnucklesTwister or Knuckles.sprite_index = sprKnucklesPunchScary
{
sound_play(global.S_ExeBeat)
instance_change(Ex7_2,Ex7)
}
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Sonic.sprite_index = sprSonicJump or DM_Sonic.sprite_index = sprHyperJump
{
sound_play(global.S_ExeBeat)
instance_change(Ex7_2,Ex7)
}
else
{
playerGetHit()
}
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Tails.sprite_index = sprTailsJump
{
sound_play(global.S_ExeBeat)
instance_change(Ex7_2,Ex7)
}
else
{
playerGetHit()
}
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Knuckles.sprite_index = sprKnucklesJump or DM_Knuckles.sprite_index = sprKnucklesGlide
{
sound_play(global.S_ExeBeat)
instance_change(Ex7_2,Ex7)
}
else
{
playerGetHit()
}
#define Collision_DM_Metal
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Metal.sprite_index = sprMS_Jump or DM_Metal.sprite_index = sprMS_Run
{
sound_play(global.S_ExeBeat)
instance_change(Ex7_2,Ex7)
}
else
{
playerGetHit()
}
#define Collision_EnergyBlast
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_ExeBeat)
instance_change(Ex7_2,Ex7)
