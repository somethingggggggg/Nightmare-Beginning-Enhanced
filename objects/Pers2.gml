#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

hspeed = 0
acc = 0.076875;
vel = 0;
maxSpeed = 5;
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
Punch = false
PunchTime = 360
Act = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Punch = false
maxSpeed = 4
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PunchTime = 360
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Twister_Start)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = Pers2
//Movement
if TAB.Twister_mode = false
{
if scr_input_dir_get("left","check") && !place_meeting(x+(abs(vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && vel > 0))
{
  vel -= acc * (1+ground);
if vel > 0 && ground == false
  vel -= acc

if rolling == false
  image_xscale = -1;
}
if scr_input_dir_get("right","check") && !place_meeting(x+abs(vel)+1, y, Solid) && (canMove == true or (rolling == true && vel < 0))
{
  vel += acc * (1+ground);
if vel < 0 && ground == false
  vel += acc

if rolling == false
  image_xscale = 1;
}}

//Deacceleration
if ground == true
{
if vel > 0
   vel -= acc/(rolling+1);
else if vel < 0
   vel += acc/(rolling+1);
}


//Speed limit
if TAB.Twister_mode = false
{
if vel > maxSpeed
   vel = maxSpeed;
else if vel < -maxSpeed
   vel = -maxSpeed;
}
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

if ground == true && ducking == false && rolling == false && spindash == false && Punch = false && TAB.Twister_mode = false
{
   if vel = 0
   sprite_index = sprKnucklesStand;
 else if vel > -8 && vel < 8
   sprite_index = sprKnucklesWalk;
else
   sprite_index = sprTailsRun;

image_speed = abs(vel/20);
}
else if sprite_index == sprKnucklesJumpBlack
{
   sprite_index = sprKnucklesJumpBlack;

image_speed = (vel/2)
}
}


//Up
if vel == 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("up","check")
{
   up = true;
}


//Ducking
if vel == 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("down","check")
{
   ducking = true;
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

if rolling == true && (ground == false or vel == 0)
{
   rolling = false;
   canMove = true;
{
{
}
}
}
{
   mask_index = sprKnucklesStandMask;
   canMove = true

}

if up == true && spindash == false
{
   sprite_index = sprKnucklesUp;
   mask_index = sprKnucklesStandMask;
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


//Punch
if scr_input_get("punch","pressed") && Punch = false && TAB.Twister_mode = false
{
    Punch = true
    alarm[0] = 25
}


if Punch = true
{
    sprite_index = sprKnucklesPunch
    image_speed = 0.2
    maxSpeed = 0
}


//Change
fuck = (scr_input_get("charswitchforw","pressed") - scr_input_get("charswitchback","pressed"))
if fuck != 0 && TAB.Turn = true
{
    arr[0,0] = AI1
    arr[1,0] = AI3
    arr[0,1] = Pers1
    arr[1,1] = Pers3
    suka = clamp(fuck,0,1)
    if instance_exists(arr[suka,0])
    {
        TAB.Turn = false
        TAB.alarm[0] = 10
        sound_play(global.S_TAB)
        instance_change(AI2,1)
        with arr[suka,0]
        {
            instance_change(other.arr[other.suka,1],1)
            view_object[0] = other.arr[other.suka,1]
        }
    }
    else if instance_exists(arr[!suka,0])
    {
        TAB.Turn = false
        TAB.alarm[0] = 10
        sound_play(global.S_TAB)
        instance_change(AI2,1)
        with arr[!suka,0]
        {
            instance_change(other.arr[!other.suka,1],1)
            view_object[0] = other.arr[!other.suka,1]
        }
    }
}
/*
if instance_exists(AI3) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
    TAB.Turn = false
    TAB.alarm[0] = 10
    sound_play(global.S_TAB)
    instance_change(AI2,Pers2)
    with AI3
    {
        instance_change(Pers3,AI3)
    }
    view_object[0] = Pers3
}

if !instance_exists(AI3) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
    if instance_exists(AI1)
    {
        TAB.Turn = false
        TAB.alarm[0] = 10
        sound_play(global.S_TAB)
        instance_change(AI2,Pers2)
        with AI1
        {
            instance_change(Pers1,AI1)
        }
        view_object[0] = Pers1
    }
}
*/
//TAB.Twister
if TAB.Twister_mode = false && Act = 1 && scr_input_get("spin","pressed") && up == false && ducking == false && Punch = 0
{
    TAB.Twister_mode = true
    Act = 0
}

if TAB.Twister_mode = true && Act = 0
{
    Act = 5
    sprite_index = sprKnucklesTwister
    image_speed = 0.8
    alarm[4] = 1
    vel = image_xscale * 8
}

if TAB.Twister_mode = true && vel=0
{
    TAB.Twister_mode = false
    Act = 2
    alarm[3] = 250
}
global.complpercent = 100 - ((x / 8300) * 100)
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_xview[view_current] = x - view_wview[view_current]/2
view_yview[view_current] = y - view_hview[view_current]/2

view_xview[view_current] = clamp(view_xview[view_current],0,room_width - view_wview[view_current])
view_yview[view_current] = clamp(view_yview[view_current],0,room_height - view_hview[view_current])
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
shader_pixel_set(global.pshader)
shader_pixel_uniform_f("fade",0.5)
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
shader_reset()

//draw_sprite(sprChangePlayer,0,view_xview[0]+40,view_yview[0]+225)
if Act=1
{
    draw_sprite(sprTwisterIconBlack, 0, view_xview[0]+view_wview[0]-50, view_yview[0]+25)
}
draw_sprite(sprPunchIconBlack, 0, view_xview[0]+view_wview[0]-40, view_yview[0]+240)
