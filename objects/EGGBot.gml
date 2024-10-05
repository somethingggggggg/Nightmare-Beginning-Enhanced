#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
ground = true
canSpriteChange = true
image_xscale =-1
Act = -1
alarm[7] = 1
sound_loop(global.S_Alarm_2)
global.vel = 0
maxSpeed = 10
acc = 0.066875;
Rob = 1
canMove = true
rolling = false
Act_Color = 1
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 111
alarm[1] = 45
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 113
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_BoxBroke)
alarm[1] = 45
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(2000,176,Badnic_2)
alarm[6] = 60
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(2000,160,Badnic_2)
instance_create(2000,256,Badnic_3)
alarm[7] = 50
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(2000,176,Badnic_1)
alarm[5] = 80
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index = sprEggmanMask
//Movement
if Rob = false
{
if keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid) && (canMove == true or (rolling == true && global.vel < 0))
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

  image_xscale = 1;
}}

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

//Deacceleration
if ground == true
{
if global.vel > 0
   global.vel -= acc
else if global.vel < 0
   global.vel += acc
}


//Speed limit
if global.vel > maxSpeed
   global.vel = maxSpeed;
else if global.vel < -maxSpeed
   global.vel = -maxSpeed;

if global.vel > -acc && global.vel < acc
{
   global.vel = 0;
}
x += global.vel;

//Handle sprites
if canSpriteChange == true
{

if ground == true
{
   if global.vel = 0
   sprite_index = sprEGGBotStand;
 else if global.vel > -8 && global.vel < 8
   sprite_index = sprEGGBotWalk;
else
   sprite_index = sprEGGBotWalk;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = 0.2 + abs(global.vel / 20)
}}

if Rob = true && Act = 0
{
global.vel = -3.5
}

if Rob = true && Act = 3
{
EGG_Shower.image_xscale =-1
EGG_Shower.sprite_index = sprMSonicAttack
EGG_Shower.hspeed = -5
view_object[0] = EGG_Shower
alarm[1] = 0
}
if Rob = true && Act = 4
{
Act = 5
alarm[1] = 60
}
if Rob = true && Act = 6
{
sound_play(Pig_Scream_S)
instance_create(48,384,BlodyAnimal)
Act = 7
}

if Rob = true && Act = 12
{
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 116
Act = 13
}

if Rob = true && Act = 14
{
global.vel =15
image_xscale = 1
}
#define Collision_Ground_Egg
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_EGG_Shower
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
    Act = 1
    global.vel = 0
    sprite_index = sprEGGBotStand
    alarm[0] = 100
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Alarm_2)
sound_stop(global.S_Pig_Scream)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=...(25)
arg1=21
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, c_white, image_alpha);
