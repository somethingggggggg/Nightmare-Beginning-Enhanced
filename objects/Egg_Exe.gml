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
Robo = true
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprEgg_ExeJump
hspeed = 5
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

//Handle sprites
if canSpriteChange == true
{
if ground == true && ducking == false && rolling == false && spindash == false
{
   if vel = 0
   sprite_index = sprEgg_Exe;
 else if vel > -8 && vel < 8
   sprite_index = sprEx4_2;
else
   sprite_index = sprTailsRun;

image_speed = abs(vel/20);
}
else if sprite_index == sprEgg_ExeJump
{
   sprite_index = sprEgg_ExeJump;

image_speed = 0.2 + abs(vel / 20)
}}

if Robo = true
{
if collision_line(x,y,x+150,y,EGG_Shower,1,0) && Act = 0
{
sprite_index = sprEgg_ExeJump
vspeed= -5
Act = 1
}

if vspeed = -6 && Act = 1
{
speed = 5
sprite_index = sprEgg_ExeJump
point_direction(x,y,EGG_Shower.x,EGG_Shower.y)
}

if Act = 2
{
if collision_circle(x,y,300,Badnic_1,1,0) && vspeed <=-5
{
move_towards_point(Badnic_1.x,Badnic_1.y,5)
}

if collision_circle(x,y,300,Badnic_2,1,0) && vspeed <=-5
{
move_towards_point(Badnic_2.x,Badnic_2.y,5)
}
if collision_circle(x,y,300,Badnic_3,1,0) && vspeed <=-5
{
move_towards_point(Badnic_3.x,Badnic_3.y,5)
}}

if Act = 3 && vspeed <=-6
{
move_towards_point(Pig.x,Pig.y,5)
}}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
vspeed =  0
speed = 0
#define Collision_Ground_Egg
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed =  0
speed = 0

if Act = 2
{
sprite_index = sprEgg_ExeDuck
vspeed =0
alarm[0] = 10
}

if Act = 3
{
sprite_index = sprEgg_ExeJump
vspeed =-7
}
#define Collision_EGG_Shower
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
EGGBot.Act = 11
vspeed=-5
Act = 2
view_object[0] = Egg_Exe
sprite_index = sprEgg_ExeJump
sound_play(global.S_MetalBroke)
with EGG_Shower
{
sprite_index = sprMSonicBroke
image_speed = 0.5
vspeed = 3
}
#define Collision_Pig
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 0
view_object[0] = EGGBot
EGGBot.alarm[1] = 45
sound_play(global.S_Pig_Scream)
with Pig
{
instance_change(BlodyAnimal,Pig)
}
instance_destroy()
