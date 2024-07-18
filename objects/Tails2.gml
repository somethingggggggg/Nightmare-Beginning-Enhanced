#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 3;
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
Bot_Mode = false
IdieTimer = 300
Idie_mode = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
maxSpeed = 5
background_visible[0] = false
global.pause = 0
sound_loop(global.S_Hide_and_Seek)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
maxSpeed = 6
sound_stop(global.S_Hide_and_Seek)
sound_play(global.S_Danger_Run)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=Ex4
invert=0
arg0=000001000
arg1=10
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=Ex4
invert=0
arg0=sprEx4_2
arg1=0
arg2=0.2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=850
arg1=2
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_Hide_and_Seek)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.pause = 1 exit;
//Movement
if Bot_Mode = false
{
if keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid) && (canMove == true or (rolling == true && global.vel < 0))
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

if rolling == false
  image_xscale = 1;
}}

//Deacceleration
if ground == true
{
if global.vel > 0
   global.vel -= acc/(rolling+1);
else if global.vel < 0
   global.vel += acc/(rolling+1);
}


//Speed limit
if global.vel > maxSpeed
   global.vel = maxSpeed;
else if global.vel < -maxSpeed
   global.vel = -maxSpeed;

if global.vel > -acc && global.vel < acc
{
   global.vel = 0;
   rolling = false;
}

x += global.vel;

//Gravity
if place_meeting(x, y+vspeed+1, HS_1) && vspeed >= 0
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
if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false
{
   if global.vel = 0
   sprite_index = sprScaryTails;
 else if global.vel > -5 && global.vel < 5
   sprite_index = sprScaryTailsWalk;
else
   sprite_index = sprScaryTailsRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}
}

//Up
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
}

//Ducking
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down)
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

if rolling == true && (ground == false or global.vel == 0)
{
   rolling = false;
   canMove = true;
{
{
}}}
{
   mask_index = sprTailsMask;
   canMove = true

}

if up == true && spindash == false
{
   mask_index = sprTailsMask;
   sprite_index = sprScaryTailsUp;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}

if ducking == true && spindash == false
{
   mask_index = sprTailsDuckMask;
   sprite_index = sprScaryTailsDuck;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}

{
   mask_index = sprTailsMask;
}
//Bot
if Bot_Mode = true
{
maxSpeed = 5
sprite_index = sprTailsRun
image_xscale = 1
global.vel = 5
}

//Idie
if Bot_Mode = false
{
if global.vel = 0 && ground = true && Idie_mode = false && ducking == false && up == false && spindash == false
{
if IdieTimer >-1
{
IdieTimer -= 1
}}
else
{
IdieTimer = 300
}
if IdieTimer <=0
{
Idie_mode = true
}

if Idie_mode = true
{
if !instance_exists(HS_3)
{
sprite_index = sprScaryTailsIdle
image_speed = 0.12
}
if instance_exists(HS_3)
{
image_xscale = 1
sprite_index = sprScaryTailsIdle2
image_speed = 0.2
}

if global.vel !=0 or ducking == true or up == true
{
IdieTimer = 300
Idie_mode = false
}}}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_HS_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_Warn3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.pause = 1 && !instance_exists(obj_dialogue_pause)
{
alarm[0] = 540
HS_1.sprite_index = sprHS_1_2
HS_2.sprite_index = sprHS_2_2
HS_4.sprite_index = sprHS_4_2
HS_5.sprite_index = sprHS_5_2
HS_6.sprite_index = sprHS_6_2
}
#define Collision_Warn4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=250
arg1=1
*/
#define Collision_Ex4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Ex4
*/
sound_stop(global.S_Danger_Run)
instance_change(Ex4_2,Ex4)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=TailsStop2
arg1=x
arg2=y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
