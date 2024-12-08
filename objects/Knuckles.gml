#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 4;
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
global.EggMeat = true
canJump = true
Punch = false
instance_create(x,y,BlodyNoice)
Twister_mode = false
IdieTimer = 300
Idie_mode = false
if instance_exists(Ex14)
{
sound_loop(global.S_NoiceKS)
}
if instance_exists(ScrapWallClean)
{
alarm[4] = 250
Bot_mode = true
}
if !instance_exists(ScrapWallClean)
{
Bot_mode = false
}
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
action_id=203
applies_to=Noice
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=ScrapGround
invert=0
arg0=sprScrapGroundBlood
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Noice)
sound_loop(global.S_You_Can_t_Run)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
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
Act =4
sound_play(global.S_Twister_Start)
#define Alarm_5
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
//Movement
if Bot_mode = false && Twister_mode = false
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
}
}

//Deacceleration
if ground == true
{
if global.vel > 0
   global.vel -= acc/(rolling+1);
else if global.vel < 0
   global.vel += acc/(rolling+1);
}


//Speed limit
if Twister_mode = false
{
if global.vel > maxSpeed
   global.vel = maxSpeed;
else if global.vel < -maxSpeed
   global.vel = -maxSpeed;
}

if global.vel > -acc && global.vel < acc
{
   global.vel = 0;
   rolling = false;
}

x += global.vel;
//Gravity
if place_meeting(x, y+vspeed+1, ScrapGround) or place_meeting(x, y+vspeed+1, ScrapElevator) or place_meeting(x, y+vspeed+1, ScrapWallDestruct) or place_meeting(x, y+vspeed+1, ScrapWall) && vspeed >= 0
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
if global.Sprite_mode = false
{
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false && Punch = false && Twister_mode = false && Idie_mode = false
{
   if global.vel = 0 && Punch = false
   sprite_index = sprKnucklesStand;
 else if global.vel > -8 && global.vel < 8 && Punch = false
   sprite_index = sprKnucklesWalk;
else
   sprite_index = sprKnucklesWalk;

    image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}}}

if global.Sprite_mode = true
{
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false && Punch = false && Twister_mode = false && Idie_mode = false
{
   if global.vel = 0 && Punch = false
   sprite_index = sprKnucklesStandScary;
 else if global.vel > -8 && global.vel < 8 && Punch = false
   sprite_index = sprKnucklesWalkScary;
else
   sprite_index = sprKnucklesWalkScary;

    image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}
}
}

//Up
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && Punch = false && keyboard_check(vk_up) && Bot_mode = false
{
   up = true;
}


//Ducking
if global.Sprite_mode = false
{
    if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && Punch = false && keyboard_check(vk_down) && Bot_mode = false
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
       mask_index = sprKnucklesStandMask;
       canMove = true

    }

    if up == true && spindash == false
    {
       mask_index = sprKnucklesStandMask;
       sprite_index = sprKnucklesUp;
    if image_index < 1
       image_speed = 0.1;
    else
       image_speed = 0;
       canMove = false;
    }


    if ducking == true && spindash == false
    {
       sprite_index = sprKnucklesDuck;
    if image_index < 1
       image_speed = 0.1;
    else
       image_speed = 0;
       canMove = false;
    }

//Punch
    if Bot_mode = false && Twister_mode = false && up == false && ducking == false && Idie_mode = false
    {
        if keyboard_check_pressed(ord("C")) && Punch = false
        {
            Punch = true
            maxSpeed = 0
            sprite_index = sprKnucklesPunch
            image_speed = 0.2
            alarm[0] = 25
        }
    }
}

if global.Sprite_mode = true
{
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && Punch = false && keyboard_check(vk_down)
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
}
}
}
{
   mask_index = sprKnucklesStandMask;
   canMove = true

}

if up == true && spindash == false
{
   mask_index = sprKnucklesStandMask;
   sprite_index = sprKnucklesUpScary;
    if image_index < 1
    {
        image_speed = 0.1;
    }
    else
    {
        image_speed = 0;
        canMove = false;
    }
}


if ducking == true && spindash == false
{
   sprite_index = sprKnucklesDuckScary;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}

//Punch
if Bot_mode = false && Twister_mode = false && up == false && ducking == false && Idie_mode = false
{
if keyboard_check_pressed(ord("C")) && Punch = false
{
Punch = true
maxSpeed = 0
sprite_index = sprKnucklesPunchScary
image_speed = 0.2
alarm[0] = 25
}}}

//Bot_mode
if Bot_mode = true && Act = 1
{
global.vel = 4
}
if Bot_mode = true && Act = 0
{
if global.hardmode = 0 global.vel = 0
else
{
global.vel = -32
x += global.vel;
}
sprite_index = sprKnucklesPunch
}
if Bot_mode = true && Act = 4
{
background_alpha[0]+=0.01
sprite_index = sprKnucklesTwister
image_speed = 0.5
global.vel = image_xscale * 6
}
if Bot_mode = true && Act=4 && vspeed !=0
{
global.vel = 0
sprite_index = sprKnucklesTwister
}


//Twister
if keyboard_check_pressed(ord("X")) && Bot_mode = false && Act = 1 && Twister_mode = false && up == false && ducking == false && Idie_mode = false
{
    Twister_mode = true
    Act = 0
}

if Twister_mode = true && Act = 0
{
    Act = 5
    sprite_index = sprKnucklesTwister
    image_speed = 0.8
    alarm[5] = 1
    global.vel = image_xscale * 8
}

if Twister_mode = true && global.vel=0
{
    Twister_mode = false
    Act = 2
    alarm[3] = 250
}

//Idie
if global.vel = 0 && ground = true && Idie_mode = false && ducking == false && up == false && spindash == false && Bot_mode = false
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
    if global.Sprite_mode = false
    {
        sprite_index = sprKnucklesIdle
        image_speed = 0.12
    }
    if global.Sprite_mode = true
    {
        sprite_index = sprKnucklesIdleScary
        image_speed = 0.2
    }
}

if global.vel != 0 or ducking == true or up == true
{
    IdieTimer = 300
    Idie_mode = false
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;

if Act=4
{
Act=2
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 108
}
#define Collision_Warn8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=190
arg1=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_Noice)
#define Collision_ScrapWall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,ScrapWall)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapWall) or place_meeting(bbox_left,y,ScrapWall)
{
move_contact_solid(direction, 0.1);
drawAngle = 0
}
#define Collision_ScrapWallDestruct
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,ScrapWallDestruct)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapWallDestruct) or place_meeting(bbox_left,y,ScrapWallDestruct)
{
move_contact_solid(direction, 0.1);
drawAngle = 0
}
#define Collision_ScrapWallExit
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,ScrapWallExit)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapWallExit) or place_meeting(bbox_left,y,ScrapWallExit)
{
move_contact_solid(direction, 0.1);
drawAngle = 0
}
#define Collision_Ex7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_Ex14
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(KnucklesStop2,Knuckles)
#define Collision_ScrapElevator
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,ScrapElevator)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapElevator) or place_meeting(bbox_left,y,ScrapElevator)
{
move_contact_solid(direction, 0.1);
drawAngle = 0
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_goto(21)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
if Bot_mode = false
{
    if Twister_mode = false
    {
        draw_sprite(sprPunchIcon, 0, view_xview[0]+view_wview[0]-40, view_yview[0]+240)
    }
    if Act = 1
    {
        draw_sprite(sprTwisterIcon, 0, view_xview[0]+view_wview[0]-50, view_yview[0]+25)
    }
}
