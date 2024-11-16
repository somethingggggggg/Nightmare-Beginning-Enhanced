#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
acc = 0.076875;
vel = 0;
maxSpeed = 6;
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
SmashDash = false
complpercent = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = Pers1
//Movement
if keyboard_check(vk_left) && !place_meeting(x+(abs(vel)*-1)-1, y, FF_Wall) && !place_meeting(x+(abs(vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && vel > 0))
{
  vel -= acc * (1+ground);
if vel > 0 && ground == false
  vel -= acc

if rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(vel)+1, y, FF_Wall) && !place_meeting(x+abs(vel)+1, y, Solid) && (canMove == true or (rolling == true && vel < 0))
{
  vel += acc * (1+ground);
if vel < 0 && ground == false
  vel += acc

if rolling == false
  image_xscale = 1;
}

//Deacceleration
if ground == true
{
if vel > 0
   vel -= acc/(rolling+1);
else if vel < 0
   vel += acc/(rolling+1);
}


//Speed limit
if vel > maxSpeed
   vel = maxSpeed;
else if vel < -maxSpeed
   vel = -maxSpeed;

if vel > -acc && vel < acc
{
   vel = 0;
   rolling = false;
}

x += vel;

//Gravity
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
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false
{
   if vel = 0
   sprite_index = sprTails;
 else if vel > -8 && vel < 8
   sprite_index = sprTailsWalk;
else
   sprite_index = sprTailsRun;

image_speed = abs(vel/20);
}
else if sprite_index == sprTailsJump
{
    sprite_index = sprTailsJump;
    image_speed = 1
}
}

//Jumping
if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && canMove == true
{
   vspeed = -7;
   sprite_index = sprTailsJump;
}

//Up
if vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
}


//Ducking
if vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down)
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

if rolling == true && (ground == false or vel == 0)
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
   sprite_index = sprTailsUpBlack;
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

//Change
if instance_exists(AI2) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
TAB.Turn = false
TAB.alarm[0] = 10
sound_play(global.S_TAB)
instance_change(AI1,Pers1)
with AI2
{
instance_change(Pers2,AI2)
}
view_object[0] = Pers2
}

if !instance_exists(AI2) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
if instance_exists(AI3)
{
TAB.Turn = false
TAB.alarm[0] = 10
sound_play(global.S_TAB)
instance_change(AI1,Pers1)
with AI3
{
instance_change(Pers3,AI3)
}
}
view_object[0] = Pers3
}

//Smash Dash
if sprite_index = sprTailsJump && ground = false && keyboard_check_pressed(ord("Z")) && SmashDash = false
{
    SmashDash = true
    instance_create(x,y,SmachDash)
}
global.complpercent = 100 - ((x / 8300) * 100)
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
SmashDash = false
#define Collision_FF_Wall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
vel = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(psGrayscale())
shader_pixel_uniform_f("fade",0.5)
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
shader_reset()
draw_sprite(sprChangePlayer,0,view_xview[0]+40,view_yview[0]+225)
