#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.KnuckMeat = true
global.EggMeat = true
acc = 0.066875;
global.vel = 0;
maxSpeed = 6;
maxSpeed2 = 11;
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
FlyTime = 220
Fly = false
IdieTimer = 300
Idie_mode = false

a = 0
cameramode = 0
botmode = 0
acc = 0.076875;
global.vel = 0;
maxSpeed = 6;
ground = true;
ducking = false;
rolling = false;
canMove = true;
Idie_mode = false
spindash = false;
spindashTimer = 0;
up = false;
drawAngle = 0;
canHit = true;
canSpriteChange = true;
canJump = true
SmashDash = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if botmode = 4
{
    vspeed = -0.25
    if sprite_index = sprTailsJump && keyboard_check_pressed(ord("Z")) && place_meeting(x,y,TailsDollBoss)
    {
        SmashDash = true
        instance_create(x,y,sm1)
        global.dialoguepage = 5
        a = 0
        vspeed = 0
        botmode = 5
    }
    exit;
}
if botmode = 0
{
if keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid_Mask) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if global.vel <=0 && rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid_Mask)&& !place_meeting(x+abs(global.vel)+1, y, Solid) && (canMove == true or (rolling == true && global.vel < 0))
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

if global.vel >=0 && rolling == false
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
if global.vel > maxSpeed && rolling = false
   global.vel = maxSpeed;
else if global.vel < -maxSpeed && rolling = false
   global.vel = -maxSpeed;

if global.vel > maxSpeed && rolling = true
 global.vel = maxSpeed2;
else if global.vel < -maxSpeed && rolling = true
   global.vel = -maxSpeed2;

if global.vel > -acc && global.vel < acc
{
   global.vel = 0;
   rolling = false;
}

x += global.vel;

//Gravity
if place_meeting(x, y+vspeed+1, Solid_Mask) && vspeed >= 0
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
   if global.vel = 0
   sprite_index = sprTails;
 else if global.vel > -6 && global.vel < 6
   sprite_index = sprTailsWalk;
else
   sprite_index = sprTailsRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}
}

if botmode = 0
{
    //Jumping
    if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && Idie_mode = false
    {
       vspeed = -7;
       sprite_index = sprTailsJump;
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
   image_index = 0;
}
//Rolling

else if global.vel != 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down) && canHit = true
{
   rolling = true;
   sound_play(global.S_Rolling)
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
}
if rolling == true && (ground == false or global.vel == 0)
{
   canMove = false;
}
else
{
  mask_index = sprTailsMask;
   canMove = true
}

if up == true && spindash == false
{
   sprite_index = sprTailsUp;
if image_index < 1
 image_speed = 0.1;
else
image_speed = 0;
canMove = false;
}


if ducking == true && spindash == false
{
   sprite_index = sprTailsDuck;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}
else if rolling == true
{
   sprite_index = sprTailsJump;
   canMove = false;

}
else if spindash = true
{
  sprite_index = sprTailsSpindash;
  image_speed = 0.25;
  canMove = false;
}

if spindash = true && ground = false
{
spindash = false
rolling = true
}
//Ducking animation in the air fix
if ground == false && sprite_index == sprTailsDuck
   sprite_index = sprTailsJump;


//Slope collision
collideSlopes();

//Idie
if botmode = 0
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
sprite_index = sprTailsIdie
image_speed = 0.12
}

if global.vel !=0 or ducking == true or up == true
{
    IdieTimer = 300
    Idie_mode = false
}
}

//Return control when the player falls on the ground when getting hit
if place_meeting(x, y+2*vspeed+2, Solid) or place_meeting(x, y+vspeed+1, Solid_Mask)&& (sprite_index = sprTailsHit && canHit =false)
{
  canMove = true;
  canSpriteChange = true;
  image_alpha = 0.5;
  alarm[0] = 90;
  global.vel = 0;
}
//Smash Dash
if sprite_index = sprTailsJump && ground = false && keyboard_check_pressed(ord("Z")) && SmashDash = false
{
    SmashDash = true
    instance_create(x,y,sm1)
}

if ground = true && !instance_exists(sm1) SmashDash = false
if cameramode = 0
{
    view_xview = x - 231
    view_yview = y - 130
    if view_xview < 0 view_xview = 0
    if view_yview < 0 view_yview = 0
}
else
{
    view_xview = 545
    view_yview = 5
}
if botmode = 1
{
    cameramode = 1
    if x < 720
    {
        global.vel = 2
    }
    else
    {
        botmode = 2
    }
}
if botmode = 2
{
    if a = 0
    {
        instance_create(0,0,obj_dialogue)
        a = 1
    }
    sprite_index = sprTailsUp;
}
if botmode = 3
{
    if vspeed = 0
    {
        botmode = 4
    }
}
if botmode = 5
{
    if a = 0
    {
        instance_create(0,0,obj_dialogue)
        a = 1
    }
    sprite_index = sprTailsUp;
}
background_x = view_xview[0] / 2
background_y = view_yview[0] / 2
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0

if place_meeting(x,bbox_bottom+1,Solid)
{
FlyTime = 220
Fly = false
move_contact_solid(270, 4);
vspeed = 0
}

if place_meeting(x,bbox_top,Solid)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,Solid) or place_meeting(bbox_left,y,Solid)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
if botmode = 0
{
    Time_Script()
}
