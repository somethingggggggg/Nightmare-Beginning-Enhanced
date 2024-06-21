#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
Boss = false
ground = false
alarm[0] = 60
Time = 0
Mode = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
if Boss = false
{
//Gravity
if place_meeting(x, y+vspeed+1, GroundSolid2)
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


if Act = 1
{
sound_play(global.S_Jump)
Act = 0
Time +=1
}}

if Boss = true
{
instance_destroy()
}

//depth
if vspeed <0
{
depth = -10
}
else
{
depth = 10
}


//Mode
if Mode = 1
{
sprite_index = sprFinalExe_Jump
image_speed = 1
}
if Mode = 2
{
sprite_index = sprFinalExePossible_to_beat1
image_speed = 0
if vspeed < 0
{
image_index = 0
}
if vspeed >= 0
{
image_index = 1
}}
if Mode = 3
{
sprite_index = sprFinalExe_Hit
}}
#define Collision_GroundSolid2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
if place_meeting(x,bbox_bottom+1,GroundSolid2)
{
move_contact_solid(270, 4);
x = FinalSonic.x
hspeed = global.vel/2
vspeed = -13
Act = 1
}
if Time = 3 or Time = 6 or Time = 9 or Time = 12 or Time = 15 or Time = 18
{
Mode = 2
instance_create(x,y-40,SpikeUp)
}
else
{
Mode = 1
with SpikeUp
{
instance_destroy()
}}}
