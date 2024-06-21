#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
maxSpeed = 7
acc = 0.04
ground = false
vel = 0
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=-1
alarm[1] = 130
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprHSEUp
with TeleportRing
{
sprite_index = sprDeathRing
}
alarm[2] = 180
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprEx4
with TeleportRing
{
sprite_index = sprTeleportRing
}
alarm[3] = 180
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprHSE_GAJump
vspeed = -7.5
hspeed =-1
alarm[6] = 70
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.1
y = y +1100
with TeleportRing
{
sprite_index = sprTeleportRing
}
alarm[5] = 60
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = Tails3
Tails3.maxSpeed = 6
instance_destroy()
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with TeleportRing
{
sprite_index = sprWinRing
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Deacceleration
if ground == true
{
if vel > 0
   vel -= acc/(rolling+1);
else if vel < 0
   vel += acc/(rolling+1);
}


//Speed limit
if vel > maxSpeed
   vel = maxSpeed;
else if vel < -maxSpeed
   vel = -maxSpeed;

if vel > -acc && vel < acc
{
   vel = 0;
   rolling = false;
}

x += vel;


//Gravity

if place_meeting(x, y+vspeed+1, HS_1G) && vspeed >= 0
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

//Act
if Act = 1
{
sprite_index = sprEx4
Act = 2
alarm[0] = 120
}
#define Collision_HS_1G
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
if Act < 1
{
Act = 1
}
#define Collision_TeleportRing
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha = 1
{
sound_play(global.S_Warp2)
image_alpha = 0
alarm[4] = 120
}
hspeed = 0
vspeed = 0
