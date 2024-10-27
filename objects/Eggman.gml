#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
whatvel = 0
maxSpeed = 3;
stupidspeed = 0
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
Bot = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Egg_Sound)
sound_stop(global.S_Lift)
room_goto(21)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Bot = 3
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
if global.hardmode = 1
{
    view_angle[0] += 0.1
}
//Movement
if Bot = 0
{
sprite_index = sprEggmanWalk;
if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) or (keyboard_check(vk_left) && keyboard_check(vk_right))
{
    sprite_index = sprEggman
}
if keyboard_check(vk_left) && (canMove == true or (rolling == true && hspeed > 0))
{
  x += -maxSpeed
  image_xscale = -1;
  while place_meeting(x,y,Egg_Ground)
  {
      sprite_index = sprEggman;
      x += 1
  }
}
/*
if keyboard_check_released(vk_left) or (place_meeting(x+(abs(hspeed)*-1)-1, y, Egg_Ground) or place_meeting(x+(abs(hspeed)*-1)-1, y, Solid))
{
    hspeed = 0
}
*/
if keyboard_check(vk_right) && (canMove == true or (rolling == true && hspeed < 0))
{
    x += maxSpeed
    image_xscale = 1;
    while place_meeting(x,y,Egg_Ground)
    {
        sprite_index = sprEggman;
        x -= 1
    }
}

if keyboard_check_released(vk_right) or place_meeting(x+abs(hspeed)+1, y, Egg_Ground) or place_meeting(x+abs(hspeed)+1, y, Solid)
{
  hspeed = 0
}
}

//Gravity
if place_meeting(x, y+vspeed+1, Egg_Ground) or place_meeting(x, y+vspeed+1, EggElevator) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
    sprite_index = sprEggmanJump
    ground = false;
   gravity = 0.25;
}

image_speed = 0.2

//Jumping
if Bot = 0
{
if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && canMove == true
{
   vspeed = -5;
   sprite_index = sprEggmanJump;
}
}

//Bot
if Bot = 1
{
if ground = true sprite_index = sprEggmanWalk
hspeed = 2
}
if Bot = 3
{
sprite_index = sprEggman;
hspeed = 0
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
hspeed = 0
#define Collision_Egg_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;

if place_meeting(bbox_right,y,Egg_Ground) or place_meeting(bbox_left,y,Egg_Ground)
{
move_contact_solid(direction, 0.1);
hspeed = 0
}
#define Collision_Ex10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.ELive != 0
{
room_goto(53)
}

if global.ELive = 0
{
with Ex10
{
instance_destroy()
}
maxSpeed = 0
instance_create(0,0,EPassed)
instance_create(x,y,Noice)
sound_stop(global.S_Egg_Sound)
sound_play(global.S_Noice)
alarm[2] = 180
}
#define Collision_EggElevator
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
EggElevator.vspeed = 1
move_contact_solid(270, 4);
vspeed = EggElevator.vspeed;
sound_loop(global.S_Lift)
alarm[0] = 300
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
