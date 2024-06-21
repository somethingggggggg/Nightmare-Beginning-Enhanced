#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
image_speed = 0.2
Act = 0
Boss = false
ground = false
jump = false
Hit = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
jump = true
vspeed = -8
sound_play(global.S_Jump)
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
if place_meeting(x, y+vspeed+1, FinalGround2)
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
//Action
if jump = false
{
sprite_index = sprSonicSpindash
hspeed = image_xscale*8
}
else
{
hspeed = hspeed/2
sprite_index = sprFinalExePossible_to_beat1
}

if jump = false && Act = 0
{
sound_play(global.S_Spindash)
Act = 1
alarm[0] = 180
}

if Hit = true
{
sprite_index = sprFinalExe_Hit
}}
else
{
instance_destroy()
}
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -image_xscale
#define Collision_FinalGround2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom,FinalGround2)
{
Hit = false
jump = false
move_contact_solid(270, 4);
vspeed = 0;
y=y-2
}
if place_meeting(bbox_right,y,FinalGround2) or place_meeting(bbox_left,y,FinalGround2)
{
image_xscale = -image_xscale
}
