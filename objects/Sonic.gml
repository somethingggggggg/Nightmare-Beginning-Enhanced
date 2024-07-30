#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 3.9;
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
Run_mode = false
Bot = 0
IdieTimer = 300
Idie_mode = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if Run_mode = false && Bot = 0
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
if Bot = 0
{
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
if sound_isplaying(global.S_DF2_S) = 0
{
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false
{
   if global.vel = 0
   sprite_index = sprSlaveSonic;
 else if global.vel > -4 && global.vel < 4
   sprite_index = sprSlaveSonicWalk;
else
   sprite_index = sprSlaveSonicRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}}}
else
{
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false
{
   if global.vel = 0
   sprite_index = sprDarkSlaveSonic;
 else if global.vel > -4 && global.vel < 4
   sprite_index = sprDarkSlaveSonicWalk;
else
   sprite_index = sprSlaveSonicRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}}
}

//Run_mode
if Run_mode = true
{
image_xscale = 1
global.vel = 4.5
}}

//Idie
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
if sound_isplaying(global.S_DF2_S) = 0
{
sprite_index = sprSlaveSonicIdle
image_speed = 0
}
else
{
sprite_index = sprSlaveSonicIdleBlack
image_speed = 0
}}

if global.vel !=0 or ducking == true or up == true
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
global.vel = 0
#define Collision_Warn1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.TR != 3
{
move_contact_solid(direction, 0.1);
drawAngle = 0
global.vel = 0
if !instance_exists(ExLastAttack)
{
instance_create(8768,1264,ExLastAttack)
ExLastAttack.hspeed = 6
}}
else
{
instance_create(8768,1264,ExLastAttack)
ExLastAttack.hspeed = 10
with Warn1
{
instance_destroy()
}}
#define Collision_Warn2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Warn2
{
instance_destroy()
}
#define Collision_Warn3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if RingStruction.sprite_index = sprRingStructionFull
{
y = y -10
Bot = 1
move_towards_point(RingStruction.x,RingStruction.y,1)
sprite_index = sprSonicJump
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_RingStruction
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if RingStruction.sprite_index = sprRingStructionFull
{
sound_play(global.S_Warp2)
sound_stop(global.S_Hidden_level)
RingStruction.sprite_index =sprRingStructionFullOut
image_speed = 0.5
instance_destroy()
}
#define Collision_FogExe1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
sound_play(global.S_Smeh)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=BR_10(72)
arg1=0
*/
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ExLastAttack.hspeed = 0
instance_create(ExLastAttack.x,ExLastAttack.y,Ex13)
with ExLastAttack
{
instance_destroy()
}
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
#define KeyPress_78
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//IC003969
y -= 20
instance_change(IC003969,Sonic)
