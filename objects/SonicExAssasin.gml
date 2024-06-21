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
sprite_index = sprHSE_Walker
image_speed = 0.15
hspeed = 4
Act = 2
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

if place_meeting(x, y+vspeed+1, ScrapElevator) or place_meeting(x, y+vspeed+1, ScrapGround) && vspeed >= 0
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

if Act = 2 && vspeed > 5
{
sprite_index = sprFinalExe_Jump
move_towards_point(ScrapEggman.x,ScrapEggman.y,8)
}
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
if Act = 0
{
alarm[0] = 120
sprite_index = sprExeDuck
}
#define Collision_ScrapElevator
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_LiftFall)
sound_stop(global.S_You_Can_t_Run)
with ScrapElevator
{
if sprite_index = sprScrapElevator
{
instance_destroy()
}}
