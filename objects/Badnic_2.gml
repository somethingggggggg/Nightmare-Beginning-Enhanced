#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
hspeed =-7
#define Collision_Egg_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Egg_Exe.Act = 2
{
instance_change(Exploy,self)
if !instance_exists(Pig)
{
instance_create(x,y+5,Pig)
}
sprite_index = sprEgg_ExeJump
Egg_Exe.Act = 3
Egg_Exe.vspeed = -5
sound_play(global.S_BoxBroke)
}
