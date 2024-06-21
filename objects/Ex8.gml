#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !place_meeting(9904,1888,Egg_Ground)
{
instance_create(9904,1888,Egg_Ground)
sound_play(global.S_Wall_Fall)
}
if !place_meeting(10240,2832,Egg_Ground) && !place_meeting(10240,2832,Eggman)
{
instance_create(10240,2832,Egg_Ground)
sound_play(global.S_Wall_Fall)
}
