#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Metal_Call)
image_xscale =-1
hspeed = -5
instance_create(352,256,Warn2)
Act = 0
#define Collision_HP_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hspeed !=0
{
Act = 1
with Execkles
{
instance_destroy()
}
HPK.image_alpha = 1
HP_Exe.image_alpha = 1
HPK.sprite_index = sprKnucklesFell
HP_Exe.y = y-5
HP_Exe.gravity = 0
HP_Exe.sprite_index = sprExeHurt
HP_Exe.image_speed = 0
HP_Exe.vel = hspeed
}
