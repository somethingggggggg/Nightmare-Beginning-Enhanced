#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.2;
global.vel = 0;
maxSpeed = 14;
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
Bot = 0
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ExePlayer.sprite_index = sprSonicSpindash
sound_play(global.S_Spindash)
alarm[1] = 30
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ExePlayer.sprite_index = sprFinalExe_Jump
sound_play(global.S_Rolling)
global.vel = -25
TailsRacing.x = 44576
TailsRacing.y = 2960
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,TPassed)
if instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
room_goto(18)
}
else
{
room_goto(5)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if Bot = 3
{
if (keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FF_DT) && !place_meeting(x+(abs(global.vel)*-1)-1, y, UpGrounderBroke) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGround) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid)) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}
if (keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, FF_DT) && !place_meeting(x+abs(global.vel)+1, y, UpGrounderBroke) && !place_meeting(x+abs(global.vel)+1, y, FinalGround) && !place_meeting(x+abs(global.vel)+1, y, Solid)) && (canMove == true or (rolling == true && global.vel < 0))
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

if rolling == false
  image_xscale = 1;
}
}
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
if (place_meeting(x, y+vspeed+1, FF_DT) && vspeed >=0) or (place_meeting(x, y+vspeed+1, FinalGroundDown) && vspeed >=0) or (place_meeting(x, y+vspeed+1, UpGrounderBroke) && vspeed >=0) or (place_meeting(x, y+vspeed+1, UpGrounder) && vspeed >=0) or place_meeting(x, y+vspeed+1, objSlopeParent)
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
}


//Handle sprites
if Bot !=6 && Bot !=7
{
if canSpriteChange == true
{
if ground == true && ducking == false && rolling == false && spindash == false
{
   if global.vel == 0

   sprite_index = sprFinalExe_Stand;
else if global.vel > -8 && global.vel < 8
   sprite_index = sprFinalExe_Run;
else
   sprite_index = sprFinalExe_Run;
image_speed = abs(global.vel / 20);
}
else if sprite_index == sprFinalExe_Jump
{
   sprite_index = sprFinalExe_Jump;
image_speed = 0.2 + abs(global.vel / 20)
}
}}


//Jumping
if Bot = 3
{
    if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && up = false && spindash = false
    {
        vspeed = -10
        sprite_index = sprFinalExe_Jump;
        sound_play(global.S_Jump)
    }
}


//Up

if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
   image_index = 0;
}


//Ducking
if Bot != 7 && Bot = 3
{
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

if rolling == true && (ground == false or global.vel == 0)
{

   canMove = false;
}

{
  mask_index = sprSonicMask;
   canMove = true

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

else if spindash == true
{
  sprite_index = sprSonicSpindash;
  image_speed = 0.25;
  canMove = false;
}

{
   mask_index = sprSonicMask;
}


//Ducking animation in the air fix
if ground == false && sprite_index == sprExeDuck
   sprite_index = sprFinalExe_Jump;
}

//Spindash
if Bot = 3
{
if ground == true && ducking == true && keyboard_check_pressed(ord("Z")) && canHit = true
{
   spindash = true;
   sound_play(global.S_Spindash)

 if spindashTimer < 5
   spindashTimer += 4;

 if spindashTimer >= 5
   spindashTimer += 6

 if spindashTimer >= 10
   spindashTimer += 8

  sprite_index = sprSonicSpindash
}

 spindashTimer = spindashTimer - ((spindashTimer div 0.125 )/ 256);

 if ground == true && spindash == true && keyboard_check_released(vk_down)
{
  rolling = true;
  sound_play(global.S_Rolling)
  global.vel = image_xscale * (5 + spindashTimer);
  spindash = false;
  spindashTimer = 0;
}
}
if Bot = 1
{
global.vel = 14
}

if Bot = 7
{
sprite_index = sprFinalExe_Walk
image_speed = 0.1
global.vel = 1
}

//Animations
if sprite_index = sprTailsFatality2
{
if image_index > 0 && image_index < 5
{
image_speed = 0.02
FF_DT.image_speed = 0.05
}
else
{
image_speed = 0.8
FF_DT.image_speed = 0.12
}
if image_index>= 7
{
image_speed = 0
image_index = 7
}}
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
Solid.alarm[0] = 30

if ExePlayer.Bot = 4
{
ExePlayer.Bot = 6
ExePlayer.sprite_index = sprExeDuck
Act = 1
ExePlayer.image_xscale =-1
alarm[0] = 30
with TailsRacing
{
path_speed = 0
}}
#define Collision_FF_DT
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,FF_DT)
{
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(x,bbox_top,FF_DT)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,FF_DT) or place_meeting(bbox_left,y,FF_DT)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_TailsRacing
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExePlayer.Bot = 6
{
global.vel = 2
with TailsRacing
{
image_alpha = 0
}
ExePlayer.sprite_index = sprTailsFatality2
view_object[1] = TailsRacing
alarm[2] = 540
}
#define Collision_Tabls
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Tabls.Act = 0
{
view_object[1] = Tabls
Tabls.Act =1
sound_play(global.S_Speak_9)
alarm[2] = 540
}
#define Keyboard_49
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Difficult = 1
sound_stop(global.S_Exe_Battle)
room_goto(42)
#define Keyboard_50
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Difficult = 2
sound_stop(global.S_Exe_Battle)
room_goto(42)
#define Keyboard_51
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Difficult = 3
sound_stop(global.S_Exe_Battle)
room_goto(42)
#define Keyboard_52
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Difficult = 4
sound_stop(global.S_Exe_Battle)
room_goto(42)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
