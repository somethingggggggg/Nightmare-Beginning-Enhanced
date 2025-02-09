#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 3.5;
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
Bot = 1
alarm[1] = 2500
if global.hardmode = 1
{
    alarm[1] = 1900
}
global.KnuckMeat = true
#define Alarm_0
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
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=SonicExAssasin
arg1=24736
arg2=1040
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Noice)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=BR_7_2(28)
arg1=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if Bot = 0
{
if keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid_Mask)  && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid_Mask) && !place_meeting(x+abs(global.vel)+1, y, Solid) && (canMove == true or (rolling == true && global.vel < 0))
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
        {
            sprite_index = sprEGGBotStand;
            mask_index = sprEggmanBlackMask;
            image_speed = 0.15;
        }
        else if global.vel > -3 && global.vel < 3
        {
            sprite_index = sprEGGBotStroll;
            mask_index = sprEggmanBlackMask;
            image_speed = abs(global.vel/20);
        }
        else
        {
            sprite_index = sprEGGBotWalk;
            mask_index = sprEggmanBlackMask;
            image_speed = abs(global.vel/20);
        }
    }
    else if sprite_index == sprEggmanJump
    {
        sprite_index = sprEggmanJump;
        mask_index = sprEggmanBlackMask;
        image_speed = (global.vel/2)
    }
}

//Jumping
if Bot = 0
{
    if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && canMove == true
    {
        vspeed = -5;
        sprite_index = sprEggmanJump;
        mask_index = sprEggmanBlackMask;
    }
}

if ground = 0 && sprite_index = sprEggmanJump
{
    if vspeed > 0 image_index = 1
    else image_index = 0
}

//Bot
if Bot = 1
{
    global.vel = 0
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_SonicExAssasin
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
BL.FF_E = false
instance_create(0,0,EPassed)
sound_stop(global.S_Lift)
room_goto(28)
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,Solid_Mask)
{
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,Solid_Mask) or place_meeting(bbox_left,y,Solid_Mask)
{
move_contact_solid(direction, 0.1);
drawAngle = 0
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
