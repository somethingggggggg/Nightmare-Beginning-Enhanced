#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 7;
maxSpeed2 = 14;
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
Bot =3
platform = noone
Act = 0
IdieTimer = 300
Idie_mode = false
Climb = false
Glide = false
Hyper_mode = false
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
if view_visible[1] = false
{
//Movement
if Bot = 3 && Climb = false
{
if (scr_input_dir_get("left","check") && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid_Mask)) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if global.vel <=0 && rolling == false
  image_xscale = -1;
}
if (scr_input_dir_get("right","check") && !place_meeting(x+abs(global.vel)+1, y, Solid_Mask)) && (canMove == true or (rolling == true && global.vel < 0))
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
if place_meeting(x, y+vspeed+1, Solid_Mask) && vspeed >= 0 && Climb = false && Glide = false
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
if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false && Climb = false && Glide = false
{
   if global.vel == 0

   sprite_index = sprKnucklesStand;
else if global.vel > -6 && global.vel < 6
   sprite_index = sprKnucklesWalk;
else
   sprite_index = sprKnucklesRun;
image_speed = abs(global.vel / 20);
}
else if sprite_index == sprKnucklesJump
{
   sprite_index = sprKnucklesJump;
image_speed = 0.2 + abs(global.vel / 20)
}}


//Jumping
if Bot = 3
{
if ground == true && scr_input_get("jump","pressed") && ducking == false && up = false && spindash = false && Idie_mode = false
{
vspeed = -6.5
sprite_index = sprKnucklesJump;
sound_play(global.S_Jump)
}}


//Up
if Bot = 3
{
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("up","check")
{
   up = true;
   image_index = 0;
}


//Ducking
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("down","check")
{
   ducking = true;
   image_index = 0;
}
//Rolling

else if global.vel != 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("down","check") && canHit = true
{
   rolling = true;
   sound_play(global.S_Rolling)
}

if up == true && (!scr_input_dir_get("up","check") or ground == false)
{
   ducking = false;
   up = false;
   canMove = true;
}

if ducking == true && (!scr_input_dir_get("down","check") or ground == false)
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
  mask_index = sprKnucklesStandMask;
   canMove = true

}

if up == true && spindash == false
{
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
else if rolling == true
{
   sprite_index = sprKnucklesJump;
   canMove = false;

}
else if spindash = true
{
  sprite_index = sprKnucklesSpindash;
  image_speed = 0.25;
  canMove = false;
}

if spindash = true && ground = false
{
spindash = false
rolling = true
}


//Ducking animation in the air fix
if ground == false && sprite_index == sprKnucklesDuck
   sprite_index = sprKnucklesJump;


//Spindash

if ground == true && ducking == true && scr_input_get("jump","pressed") && canHit = true
{
   spindash = true;
   sound_play(global.S_Spindash)

 if spindashTimer < 5
   spindashTimer += 2;

 if spindashTimer >= 5
   spindashTimer += 4

 if spindashTimer >= 10
   spindashTimer += 6

  sprite_index = sprKnucklesSpindash
}

 spindashTimer = spindashTimer - ((spindashTimer div 0.125 )/ 256);

 if vspeed = 0
 {
 if ground == true && spindash == true && scr_input_dir_get("down","released")
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
if place_meeting(x, y+2*vspeed+2, Solid) or place_meeting(x, y+vspeed+1, Solid_Mask) && (sprite_index = sprSonicHit && canHit =false)
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
sprite_index = sprKnucklesIdle
image_speed = 0.12
}

if global.vel !=0 or ducking == true or up == true
{
IdieTimer = 300
Idie_mode = false
}}

//Glide
if vspeed <=-3 = false && sprite_index = sprKnucklesJump && scr_input_get("jump","pressed")
{
Glide = true
}

if Glide = true && scr_input_get("jump","check")
{
gravity= 0.15
vspeed = 0
sprite_index = sprKnucklesGlide
if image_xscale = 1
{
global.vel += acc/2
}
if image_xscale = -1
{
global.vel -= acc/2
}
image_speed = 0
if global.vel >-1 && global.vel < 1
{
image_index = 0
}
if (global.vel <-1 && global.vel > -3) or (global.vel >1 && global.vel < 3)
{
image_index = 1
}
if global.vel <-3 or global.vel > 3
{
image_index = 2
}
if rolling = true
{
rolling = false
}}
else if Glide = true && !scr_input_get("jump","check")
{
sprite_index = sprKnucklesGoDown
Glide = false
}

//Climb
if Climb = true
{
gravity= 0
vspeed = 0
sprite_index = sprKnucklesClimb
if scr_input_dir_get("up","check") or scr_input_dir_get("down","check")
{
image_speed = 0.15
}
else
{
image_speed = 0
}
if scr_input_dir_get("up","check")
{
vspeed =-1
}
if scr_input_dir_get("down","check")
{
vspeed =1
}
if !scr_input_dir_get("up","check") && !scr_input_dir_get("down","check")
{
vspeed = 0
}

if scr_input_get("jump","pressed")
{
sprite_index = sprKnucklesJump
vspeed = -4
Climb = false
if image_xscale =1
{
global.vel = -2
}
if image_xscale =-1
{
global.vel = 2
}}

if image_xscale =1
{
if !place_meeting(x+35,y-10,Solid_Mask)
{
x=x+35
y=y-10
Climb = false
}}

if image_xscale =-1
{
if !place_meeting(x-35,y-10,Solid_Mask)
{
x=x-35
y=y-10
Climb = false
}}}

//Return control when the player falls on the ground when getting hit
if place_meeting(x, y+2*vspeed+2, Solid) or place_meeting(x, y+vspeed+1, Solid_Mask)&& (sprite_index = sprKnucklesHit && canHit =false)
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

if place_meeting(x,bbox_bottom,Solid_Mask)
{
if rolling = true
{
rolling = false
}
if Climb = true
{
Climb = false
}
if Glide = true
{
Glide = false
}
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
if Glide = true
{
Climb = true
Glide = false
}
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
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
