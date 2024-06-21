#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
vel = 0;
maxSpeed = 8;
ground = true;
ducking = false;
rolling = false;
canMove = true;
spindash = false;
spindashTimer = 0;
up = false;
drawAngle = 0;
canHit = true;
canSpriteChange = true;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 6
//Gravity
if place_meeting(x, y+vspeed+1, FinalGround) && vspeed >= 0
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
#define Collision_FinalGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
FinalSonic.Bot =2
Solid.alarm[0] = 60
instance_destroy()
