#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.076875;
vel = 0;
maxSpeed = 5;
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
canJump = true
Punch = false
PunchTime = 360
Act = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Punch = false
maxSpeed = 4
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PunchTime = 360
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Twister_Start)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = Pers2
//Movement
if TAB.Twister_mode = false
{
if keyboard_check(vk_left) && !place_meeting(x+(abs(vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && vel > 0))
{
  vel -= acc * (1+ground);
if vel > 0 && ground == false
  vel -= acc

if rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(vel)+1, y, Solid) && (canMove == true or (rolling == true && vel < 0))
{
  vel += acc * (1+ground);
if vel < 0 && ground == false
  vel += acc

if rolling == false
  image_xscale = 1;
}}

//Deacceleration
if ground == true
{
if vel > 0
   vel -= acc/(rolling+1);
else if vel < 0
   vel += acc/(rolling+1);
}


//Speed limit
if TAB.Twister_mode = false
{
if vel > maxSpeed
   vel = maxSpeed;
else if vel < -maxSpeed
   vel = -maxSpeed;
}
if vel > -acc && vel < acc
{
   vel = 0;
   rolling = false;
}

x += vel;

//Gravity
if place_meeting(x, y+vspeed+1, FF_Ground) && vspeed >= 0
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

if ground == true && ducking == false && rolling == false && spindash == false && Punch = false && TAB.Twister_mode = false
{
   if vel = 0
   sprite_index = sprKnucklesStandBlack;
 else if vel > -8 && vel < 8
   sprite_index = sprKnucklesWalkBlack;
else
   sprite_index = sprTailsRun;

image_speed = abs(vel/20);
}
else if sprite_index == sprKnucklesJumpBlack
{
   sprite_index = sprKnucklesJumpBlack;

image_speed = (vel/2)
}
}


//Up
if vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
}


//Ducking
if vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down)
{
   ducking = true;
}

if up == true && (!keyboard_check(vk_up) or ground == false)
{
   ducking = false;
   up = false;
   canMove = true;
}

if ducking == true && (!keyboard_check(vk_down) or ground == false)
{
   ducking = false;
   up = false;
   canMove = true;
}

if rolling == true && (ground == false or vel == 0)
{
   rolling = false;
   canMove = true;
{
{
}}}
{
   mask_index = sprKnucklesStandMask;
   canMove = true

}

if up == true && spindash == false
{
   mask_index = sprKnucklesStandMask;
   sprite_index = sprKnucklesUpBlack;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}


if ducking == true && spindash == false
{
   sprite_index = sprKnucklesDuckBlack;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}


//Punch
if keyboard_check_pressed(ord("D")) && Punch = false
{
Punch = true
alarm[0] = 25
}


if Punch = true
{
sprite_index = sprKnucklesPunchBlack
image_speed = 0.2
maxSpeed = 0
}


//Change
if instance_exists(AI3) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
TAB.Turn = false
TAB.alarm[0] = 10
sound_play(global.S_TAB)
instance_change(AI2,Pers2)
with AI3
{
instance_change(Pers3,AI3)
}
view_object[0] = Pers3
}

if !instance_exists(AI3) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
if instance_exists(AI1)
{
TAB.Turn = false
TAB.alarm[0] = 10
sound_play(global.S_TAB)
instance_change(AI2,Pers2)
with AI1
{
instance_change(Pers1,AI1)
}
view_object[0] = Pers1
}}

//TAB.Twister
if TAB.Twister_mode = false && Act = 1 && keyboard_check_pressed(ord("X")) && up == false && ducking == false
{
TAB.Twister_mode = true
Act = 0
}

if TAB.Twister_mode = true && Act = 0
{
Act = 5
sprite_index = sprKnucklesTwisterBlack
image_speed = 0.8
alarm[4] = 1
vel = image_xscale * 8
}

if TAB.Twister_mode = true && vel=0
{
TAB.Twister_mode = false
Act = 2
alarm[3] = 250
}
global.complpercent = 100 - round((x / 8300) * 100)
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);

draw_sprite(sprChangePlayer,0,view_xview[0]+40,view_yview[0]+225)
if Act=1
{
draw_sprite(sprTwisterIconBlack, 0, view_xview[0]+view_wview[0]-50, view_yview[0]+25)
}
draw_sprite(sprPunchIconBlack, 0, view_xview[0]+view_wview[0]-40, view_yview[0]+240)
