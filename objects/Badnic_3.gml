#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
ground = true
hspeed =-5.5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, Ground_Egg) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}
#define Collision_Ground_Egg
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
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
