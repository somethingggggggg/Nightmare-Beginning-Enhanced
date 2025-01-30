#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.1
global.vel = 0;
maxSpeed = 12;
maxSpeed2 = 18;
ground = false;
ducking = false;
rolling = false;
canMove = true;
spindash = false;
spindashTimer = 0;
up = false;
drawAngle = 0;
canHit = true;
canSpriteChange = true;
global.rings = 10;
Bot =3
platform = noone
Act = 0
IdieTimer = 300
Idie_mode = false
Hyper_mode=0
Hitted=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
canHit = true;
image_alpha = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index = sprSonicMask
if view_visible[1] = false
{
//Movement
if Bot = 3
{
if (keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid_Mask) && !place_meeting(x+(abs(global.vel)*-1)-1, y, EggElevator) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWallDestruct) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWall) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapGround) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGroundDown) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGround2) && !place_meeting(x+(abs(global.vel)*-1)-1, y, UpGrounder) && !place_meeting(x+(abs(global.vel)*-1)-1, y, UpGrounderBroke) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGround) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid)) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}
if (keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid_Mask) && !place_meeting(x+abs(global.vel)+1, y, EggElevator) && !place_meeting(x+abs(global.vel)+1, y, ScrapWallDestruct) && !place_meeting(x+abs(global.vel)+1, y, ScrapWall) && !place_meeting(x+abs(global.vel)+1, y, ScrapGround) && !place_meeting(x+abs(global.vel)+1, y, FinalGroundDown) && !place_meeting(x+abs(global.vel)+1, y, FinalGround2) && !place_meeting(x+abs(global.vel)+1, y, UpGrounder) && !place_meeting(x+abs(global.vel)+1, y, UpGrounderBroke) && !place_meeting(x+abs(global.vel)+1, y, FinalGround) && !place_meeting(x+abs(global.vel)+1, y, Solid)) && (canMove == true or (rolling == true && global.vel < 0))
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

if rolling == false
  image_xscale = 1;
}}
//Deacceleration
if Bot != 5
{
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
}}

if Bot = 5
{
//Deacceleration
if ground == true
{
if global.vel > 4
global.vel -= acc/(rolling+1);
else if global.vel < 4
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
   global.vel = 4;
   rolling = false;
}
}

x += global.vel;

//Gravity
if Bot!=10{
if place_meeting(x, y+vspeed+1, Solid_Mask) or place_meeting(x, y+vspeed+1, ScrapWall) or place_meeting(x, y+vspeed+1, EggElevator) or place_meeting(x, y+vspeed+1, ScrapWallDestruct) or place_meeting(x, y+vspeed+1, ScrapGround) or place_meeting(x, y+vspeed+1, FinalGround) or place_meeting(x, y+vspeed+1, FinalGround2) or place_meeting(x, y+vspeed+1, FinalGroundDown) or place_meeting(x, y+vspeed+1, UpGrounderBroke) or place_meeting(x, y+vspeed+1, UpGrounder) or place_meeting(x, y+vspeed+1, objSlopeParent) && vspeed >= 0
{
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;

}
}
else
{
  ground = false;
   gravity = 0.25;
}}


//Handle sprites
if canSpriteChange == true
{
if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false
{
   if global.vel == 0

   sprite_index = sprFinalExe_Stand;
else if global.vel > -10 && global.vel < 10
   sprite_index = sprHSE_Walker;
else
   sprite_index = sprFinalExe_Run;
image_speed = abs(global.vel / 20);
}
else if sprite_index == sprFinalExe_Jump
{
   sprite_index = sprFinalExe_Jump;
image_speed = 0.2 + abs(global.vel / 20)
}
}


//Jumping
if Bot = 3
{
if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && up = false && spindash = false && Idie_mode = false
{
if room=89{vspeed=-9}else{
vspeed = -8}
sprite_index = sprFinalExe_Jump;
sound_play(global.S_Jump)
}}


//Up
if Bot = 3
{
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
   image_index = 0;
}


//Ducking
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down)
{
   ducking = true;
   image_index = 0;
}
//Rolling

else if global.vel != 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down)
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

if rolling == true && (ground == false or global.vel == 0)
{

   canMove = false;
}

{
  mask_index = sprSonicMask;
   canMove = true

}

if up == true && spindash == false
{
   sprite_index = sprExetiorP_Up;
if image_index < 1
 image_speed = 0.1;
else
image_speed = 0;
canMove = false;
}


if ducking == true && spindash == false
{
   sprite_index = sprExeDuck;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}
else if rolling == true
{
   sprite_index = sprFinalExe_Jump;
   canMove = false;

}
else if spindash = true
{
  sprite_index = sprSonicSpindash;
  image_speed = 0.25;
  canMove = false;
}

if spindash = true && ground = false
{
spindash = false
rolling = true
}


//Ducking animation in the air fix
if ground == false && sprite_index == sprExeDuck
   sprite_index = sprFinalExe_Jump;


//Spindash

if ground == true && ducking == true && keyboard_check_pressed(ord("Z"))
{
   spindash = true;
   sound_play(global.S_Spindash)

 if spindashTimer < 5
   spindashTimer += 2;

 if spindashTimer >= 5
   spindashTimer += 4

 if spindashTimer >= 10
   spindashTimer += 6

  sprite_index = sprSonicSpindash
}

 spindashTimer = spindashTimer - ((spindashTimer div 0.125 )/ 256);

 if vspeed = 0
 {
 if ground == true && spindash == true && keyboard_check_released(vk_down)
{
  rolling = true;
  sound_play(global.S_Rolling)
  global.vel = image_xscale * (5 + spindashTimer);
  spindash = false;
  spindashTimer = 0;
}}}


//Slope collision
collideSlopes();

//Return control when the player falls on the ground when getting hit
if place_meeting(x, y+2*vspeed+2, Solid) or place_meeting(x, y+vspeed+1, Solid_Mask) or place_meeting(x, y+vspeed+1, EggElevator) or place_meeting(x, y+vspeed+1, ScrapWallDestruct) or place_meeting(x, y+vspeed+1, ScrapWall) or place_meeting(x, y+vspeed+1, ScrapGround) or place_meeting(x, y+vspeed+1, UpGrounder) or place_meeting(x, y+vspeed+1, FinalGround2) or place_meeting(x, y+vspeed+1, FinalGroundDown) or place_meeting(x, y+vspeed+1, FinalGround) or place_meeting(x, y+vspeed+1, objSlopeParent) && (Hitted=1)
{
  Hitted=0
  canMove = true;
  canSpriteChange = true;
  image_alpha = 0.5;
  alarm[0] = 90;
  global.vel = 0;
}

if Bot = 1
{
global.vel = 0
}

if Bot = 2
{
image_xscale = 1
global.vel = 8
}

if Bot = 4
{
global.vel = 6
}

if Bot = 5
{
global.vel = 4
image_xscale = 1
rolling = false
up = false
ducking = false
spindash = false
}

if Bot = 6 or Bot = 7
{
    sprite_index = sprExetiorP_LookAround
    image_xscale=-1
}
if Bot = 6
{
    Bot = 7
    FinalCam.alarm[5] = 120
}
//Platform
platform = instance_place(x, y + 1, UpGrounder)
}

//Idie
if Bot=3
{
    if global.vel = 0 && ground = true && Idie_mode = false && ducking == false && up == false && spindash == false
    {
        if IdieTimer >-1
        {
            IdieTimer -= 1
        }
    }
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
        sprite_index = sprHSE_Sleep
        image_speed = 0.06
    }

    if global.vel !=0 or ducking == true or up == true
    {
    IdieTimer = 300
    Idie_mode = false
    }
}
else
{
IdieTimer = 300
Idie_mode = false
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
FinalBackground.x = view_xview[0]+100
FinalBackground.y = view_yview[0]+140

platform = instance_place(x, y, UpGrounder);
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Solid.solid = 1
{
move_contact_solid(direction, 0.1);
drawAngle = 0
global.vel = 0
}
#define Collision_TeleportRing
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(HSE_Walker)
{
with HSE_Walker
{
instance_destroy()
}
with HSE_GA
{
sprite_index = sprHSE_Sleep
AwakeTime = 400
SleepTimer = 300
SleepTime = true
Phase_2 = false
image_alpha = 1
sound_stop(global.S_Chase)
sound_loop(global.S_HideSound)
}}
#define Collision_ScrapElevator
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
EggElevator.vspeed = 1
move_contact_solid(270, 4);
vspeed = EggElevator.vspeed;
sound_loop(global.S_Lift)
EggElevator.alarm[0] = 300
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0


if place_meeting(x,bbox_bottom+1,Solid_Mask)
{
move_contact_solid(270, 4);
vspeed = 0
}

if place_meeting(x,bbox_top,Solid_Mask)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,Solid_Mask) or place_meeting(bbox_left,y,Solid_Mask)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y>50{
if !instance_exists(FinalCam4)
{
if Bot = 3
{
global.SLive -= 1
instance_create(x,y,FinalSonicDeath)
instance_destroy()
}}
if instance_exists(FinalCam4)
{
global.GoodEnd = false
global.BestEnd = true
sound_stop(global.S_Burn)
transition_kind = 21
transition_steps = 180
room_goto(76)
}}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
