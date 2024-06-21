#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 2;
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
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if Run_mode = false
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
   if global.vel = 0
   sprite_index = sprICStand;
 else if global.vel > -4 && global.vel < 4
   sprite_index = sprICWalk;
else
   sprite_index = sprICRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = (global.vel/2)
}
}

//View
if instance_exists(IC003969)
{
view_object[0] = IC003969
}
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
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);

draw_sprite(sprDesk, 0, view_xview[0]+35, view_yview[0]+32)

draw_text_color(view_xview[0]+60,view_yview[0]+39,"0",$00ffff,$00ffff,$00ffff,$005555, 1)
draw_text_color(view_xview[0]+60,view_yview[0]+7,"0",$00ffff,$00ffff,$00ffff,$005555, 1)

draw_text_color(view_xview[0]+60,view_yview[0]+23,Timer3.Min,$00ffff,$00ffff,$00ffff,$005555, 1)
draw_text_color(view_xview[0]+76,view_yview[0]+23,":",$00ffff,$00ffff,$00ffff,$005555, 1)
draw_text_color(view_xview[0]+82,view_yview[0]+23,Timer3.Sec,$00ffff,$00ffff,$00ffff,$005555, 1)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=526
invert=0
arg0=FONT
arg1=0
*/
