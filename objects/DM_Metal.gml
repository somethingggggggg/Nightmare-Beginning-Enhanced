#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.08
global.vel = 0;
maxSpeed = 8;
maxSpeed2 = 15;
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
Hyper_mode = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
canHit = true;
image_alpha = 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_Lift)
sound_play(global.S_Warp)
transition_steps = 180
transition_kind = 21
room_goto(27)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index = sprMS_Mask
if view_visible[1] = false
{
//Movement
if Bot = 3 && sprite_index != sprMS_ChargeUp
{
if (keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid_Mask) && !place_meeting(x+(abs(global.vel)*-1)-1, y, EggElevator) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWallDestruct) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWall) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapGround) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGroundDown) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGround2) && !place_meeting(x+(abs(global.vel)*-1)-1, y, UpGrounder) && !place_meeting(x+(abs(global.vel)*-1)-1, y, UpGrounderBroke) && !place_meeting(x+(abs(global.vel)*-1)-1, y, FinalGround) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid)) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if global.vel <=0 && rolling == false
  image_xscale = -1;
}
if (keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid_Mask) && !place_meeting(x+abs(global.vel)+1, y, EggElevator) && !place_meeting(x+abs(global.vel)+1, y, ScrapWallDestruct) && !place_meeting(x+abs(global.vel)+1, y, ScrapWall) && !place_meeting(x+abs(global.vel)+1, y, ScrapGround) && !place_meeting(x+abs(global.vel)+1, y, FinalGroundDown) && !place_meeting(x+abs(global.vel)+1, y, FinalGround2) && !place_meeting(x+abs(global.vel)+1, y, UpGrounder) && !place_meeting(x+abs(global.vel)+1, y, UpGrounderBroke) && !place_meeting(x+abs(global.vel)+1, y, FinalGround) && !place_meeting(x+abs(global.vel)+1, y, Solid)) && (canMove == true or (rolling == true && global.vel < 0))
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

if global.vel >=0 && rolling == false
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
if place_meeting(x, y+vspeed+1, Solid_Mask) or place_meeting(x, y+vspeed+1, objSlopeParent) && vspeed >= 0
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
if canSpriteChange == true
{
if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false
{
   if global.vel == 0

   sprite_index = sprMS_Stand;
else if global.vel > -8 && global.vel < 8
   sprite_index = sprMS_Walk;
else
   sprite_index = sprMS_Run;
image_speed = abs(global.vel / 20);
}
else if sprite_index == sprMS_Jump
{
   sprite_index = sprMS_Jump;
image_speed = 0.2 + abs(global.vel / 20)
}}


//Jumping
if Bot = 3
{
if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && up = false && spindash = false && Idie_mode = false
{
vspeed = -7
sprite_index = sprMS_Jump;
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

else if global.vel != 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down) && canHit = true
{
   rolling = true;
   sound_play(global.S_MetalRolling)
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
  mask_index = sprMS_Mask;
   canMove = true

}

if up == true && spindash == false
{
   sprite_index = sprMS_Up;
if image_index < 1
 image_speed = 0.1;
else
image_speed = 0;
canMove = false;
}


if ducking == true && spindash == false
{
   sprite_index = sprMS_Duck;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}
else if rolling == true
{
   sprite_index = sprMS_Jump;
   canMove = false;

}
else if spindash = true
{
  sprite_index = sprMS_Spindash;
  image_speed = 0.25;
  canMove = false;
}

if spindash = true && ground = false
{
spindash = false
rolling = true
}


//Ducking animation in the air fix
if ground == false && sprite_index == sprMS_Duck
   sprite_index = sprMS_Jump;


//Spindash

if ground == true && ducking == true && keyboard_check_pressed(ord("Z")) && canHit = true
{
   spindash = true;
   sound_play(global.S_MetalSpindash)

 if spindashTimer < 5
   spindashTimer += 2;

 if spindashTimer >= 5
   spindashTimer += 4

 if spindashTimer >= 10
   spindashTimer += 6

  sprite_index = sprMS_Spindash
}

 spindashTimer = spindashTimer - ((spindashTimer div 0.125 )/ 256);

 if vspeed = 0
 {
 if ground == true && spindash == true && keyboard_check_released(vk_down)
{
  rolling = true;
  sound_play(global.S_MetalRolling)
  global.vel = image_xscale * (5 + spindashTimer);
  spindash = false;
  spindashTimer = 0;
}}}
//Slope collision
collideSlopes();

//Return control when the player falls on the ground when getting hit
if place_meeting(x, y+2*vspeed+2, Solid) or place_meeting(x, y+vspeed+1, Solid_Mask) or place_meeting(x, y+vspeed+1, objSlopeParent) && (sprite_index = sprSonicHit && canHit =false)
{
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
sprite_index = sprSonicLookAround
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
if Hyper_mode = false
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
sprite_index = sprMS_Idie
image_speed = 0
}

if global.vel !=0 or ducking == true or up == true
{
IdieTimer = 300
Idie_mode = false
}}

//Blast
if ground = false && sprite_index = sprMS_Jump && keyboard_check_pressed(ord("Z"))
{
sprite_index = sprMS_ChargeUp
image_speed = 0.15
rolling = false
if image_index<=2
{
image_speed = 0.1
}
else if image_index>=2
{
image_index = 2
image_speed = 0
}
if image_xscale = 1
{
instance_create(x+10,y,EnergyBlast)
}
if image_xscale = -1
{
instance_create(x-+10,y,EnergyBlast)
}}
//Return control when the player falls on the ground when getting hit
if place_meeting(x, y+2*vspeed+2, Solid) or place_meeting(x, y+vspeed+1, Solid_Mask)&& (sprite_index = sprMS_Hit && canHit =false)
{
  canMove = true;
  canSpriteChange = true;
  image_alpha = 0.5;
  alarm[0] = 90;
  global.vel = 0;
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
#define Collision_ExeAttack1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack1.sprite_index = sprFinalExe_Jump && sprite_index != sprSonicJump && canHit = true
{
playerGetHit()
}

if ExeAttack1.sprite_index = sprFinalExePossible_to_beat1 && sprite_index = sprSonicJump
{
with ExeAttack1
{
global.Hit+=1
Mode = 3
sound_play(global.S_Hit)
}}
else if sprite_index != sprSonicJump && canHit = true
{
playerGetHit()
}
#define Collision_SpikeUp
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canHit = true
{
playerGetHit()
}
#define Collision_StripSpike
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canHit = true
{
playerGetHit()
}
#define Collision_ExeAttack2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack2.sprite_index = sprFinalExe_Jump && sprite_index != sprSonicJump && canHit = true
{
playerGetHit()
}

if ExeAttack2.sprite_index = sprFinalExLaugh && sprite_index = sprSonicJump
{
with ExeAttack2
{
global.Hit+=1
vspeed =-5
Act = 2
sound_play(global.S_Hit)
}}
#define Collision_ExeAttack3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack3.sprite_index = sprSonicSpindash && sprite_index != sprSonicJump && canHit = true
{
playerGetHit()
}

if ExeAttack3.sprite_index = sprFinalExePossible_to_beat1 && sprite_index = sprSonicJump
{
with ExeAttack3
{
global.Hit+=1
vspeed =-5
Hit = true
sound_play(global.S_Hit)
}}
#define Collision_ExeAttack4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack4.sprite_index != sprEx4_2
{
if ExeAttack4.sprite_index = sprFinalExe_Jump && sprite_index != sprSonicJump && canHit = true && (!instance_exists(FinalMasterEmerald) && !instance_exists(HP_ExeWeak))
{
playerGetHit()
}

if ExeAttack4.sprite_index = sprFinalExePossible_to_beat1 && sprite_index = sprSonicJump && (!instance_exists(FinalMasterEmerald) && !instance_exists(HP_ExeWeak))
{
with ExeAttack4
{
global.Hit+=1
Mode = 3
sound_play(global.S_Hit)
}}
else if sprite_index != sprSonicJump && canHit = true && (!instance_exists(FinalMasterEmerald) && !instance_exists(HP_ExeWeak))
{
playerGetHit()
}}
else
{
gravity = 0
global.vel = ExeAttack4.hspeed
sprite_index = sprFinalExe_Hit
}
#define Collision_FinalExeBitch
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
maxSpeed = 3;
ducking = false
spindash = false
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
instance_create(x,y,MS_Death)
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
if instance_exists(Final_Time)
{
if !instance_exists(FinalCam4)
{
draw_sprite(sprHitCounter,0,view_xview[0]+130,view_yview[0]+42)
draw_text_color(view_xview[0]+150,view_yview[0]+35,global.Hit,$00ffff,$00ffff,$00ffff,$005555, 1)
draw_text_color(view_xview[0]+170,view_yview[0]+35,'/15',$00ffff,$00ffff,$00ffff,$005555, 1)
}
if instance_exists(FinalCam4) && Bot = 3
{
draw_sprite(sprRunCounter,0,view_xview[0]+145,view_yview[0]+50)
}}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=526
invert=0
arg0=FONT
arg1=0
*/
