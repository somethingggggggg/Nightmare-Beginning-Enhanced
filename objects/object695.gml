#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if keyboard_check(vk_left) && !place_meeting(x+(abs(vel)*-1)-1, y, a_solidlool) && (canMove == true or (rolling == true && vel > 0))
{
  vel -= acc * (1+ground);
if vel > 0 && ground == false
  vel -= acc
if rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(vel)+1, y, a_solidlool) && (canMove == true or (rolling == true && vel < 0))
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
if place_meeting(x, y, a_solidlool)
{
x -= vel;
}

//Gravity
if place_meeting(x, y+vspeed+1, a_solidlool) && vspeed >= 0
{
   ground = true;
   gravity = 0;
   do y -= 1
   until !place_meeting(x, y+vspeed+1, a_solidlool)
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}

if place_meeting(x, y-vspeed-1, a_solidlool) && vspeed <= 0
{
   ground = false;
   gravity = 0.25;
   do y += 1
   until !place_meeting(x, y-vspeed-1, a_solidlool)
   vspeed = 0;
}

//Handle sprites
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false
{
   if vel = 0
   sprite_index = sprTailsBlack;
 else if vel > -8 && vel < 8
   sprite_index = sprTailsWalkBlack;
else
   sprite_index = sprTailsRun;

image_speed = abs(vel/20);
}
else if sprite_index == sprTailsJumpBlack
{
   sprite_index = sprTailsJumpBlack;

image_speed = (vel/2)
}
}

//Jumping
if ground == true && scr_input_get("jump","pressed") && ducking == false && canMove == true
{
   vspeed = -7;
   sprite_index = sprTailsJumpBlack;
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
   sprite_index = sprTailsDuckBlack;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}
//Smash Dash
if sprite_index = sprTailsJumpBlack && ground = false && scr_input_get("jump","pressed") && SmashDash = false
{
SmashDash = true
instance_create(x,y,SmachDash)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
