#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
vel = 0;
maxSpeed = 8;
ground = true;
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -0.3
vspeed =-7
depth = -5
sprite_index = sprHSE_Fall
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
sprite_index = sprFinalExe_Jump
FinalSonic.Bot = 3
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(4256,4640,UpGrounder)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, FinalGround) && sprite_index != sprHSE_Fall
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
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0

if Act = 1 && Act = 2 && Act = 3
{
image_xscale = -image_xscale
}
#define Collision_FinalSonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprFinalExe_Jump && FinalSonic.canHit = true
{
with FinalSonic
{
playerGetHit()
}}
#define Collision_FinalGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index != sprHSE_Fall
{
move_contact_solid(270, 4);
vspeed = 0;
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 2
FinalGround.solid = 1
instance_create(FinalSonic.x,4505,ExeAttack1)
with FinalExetior
{
instance_destroy()
}
#define Other_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
FinalSonic.Bot = 3
