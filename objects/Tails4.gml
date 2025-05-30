#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.KnuckMeat = true
global.EggMeat = true
acc = 0.066875;
origacc = 0.066875
jmpframes = 0
global.vel = 0;
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
view_object[0] = Tails4
FlyTime = 220
Fly = false
IdieTimer = 300
Idie_mode = false
stopping = 0
varsprskid = spr_tailsskid
Bot = 0
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
        sound_stop(global.S_tailsfly)
        sound_stop(global.S_tailstired)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_Mindfuckery)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///everything
//Movement
if keyboard_check(vk_left) && (canMove == true or (rolling == true && global.vel > 0)) //&& !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWallDestruct) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapElevator) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWallExit) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapWall) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && !place_meeting(x+(abs(global.vel)*-1)-1, y, ScrapGround) && !place_meeting(x+(abs(global.vel)*-1)-1, y, HalfSolid)
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}

if keyboard_check(vk_right) && (canMove == true or (rolling == true && global.vel < 0)) //&& !place_meeting(x+abs(global.vel)+1, y, ScrapWallDestruct) && !place_meeting(x+abs(global.vel)+1, y, ScrapElevator) && !place_meeting(x+abs(global.vel)+1, y, ScrapWallExit) && !place_meeting(x+abs(global.vel)+1, y, ScrapWall) && !place_meeting(x+abs(global.vel)+1, y, Solid) && !place_meeting(x+abs(global.vel)+1, y, ScrapGround) && !place_meeting(x+abs(global.vel)+1, y, HalfSolid)
{
  global.vel += acc * (1+ground);
if global.vel < 0 && ground == false
  global.vel += acc

if rolling == false
  image_xscale = 1;
}

scr_skidcheck()

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
if place_meeting(x,y,ScrapGround) or place_meeting(x,y,ScrapWallDestruct) or place_meeting(x,y,ScrapElevator) or place_meeting(x,y,ScrapWallExit) or place_meeting(x,y,ScrapWall) or place_meeting(x,y,ScrapWallExit) or place_meeting(x,y,HalfSolid) or place_meeting(x,y,Solid) or place_meeting(x,y,ScrapGround)
{
    x -= global.vel
    global.vel = 0
}

//Gravity
if place_meeting(x, y+vspeed+1, ScrapGround) or place_meeting(x, y+vspeed+1, ScrapElevator) or place_meeting(x, y+vspeed+1, ScrapWallDestruct) or place_meeting(x, y+vspeed+1, ScrapWallExit) or place_meeting(x, y+vspeed+1, ScrapWall) or place_meeting(x, y+vspeed+1, HPGround) && vspeed >= 0
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
    if ground == true && ducking == false && rolling == false && spindash == false && stopping = 0
    {
       if global.vel = 0
       sprite_index = sprTails;
     else if global.vel > -6 && global.vel < 6
       sprite_index = sprTailsWalk;
    else
       sprite_index = sprTailsRun;

        image_speed = abs(global.vel/20);
    }
    else if sprite_index == sprTailsJump
    {
        //sprite_index = sprTailsJump;
        image_speed = 1
    }
}

//Jumping
if ground == true && scr_input_get("jump","pressed") && ducking == false && canMove == true && Idie_mode = false
{
    //vspeed = -7;
    sound_play(global.S_Jump);
    jmpframes = 7
    stopping = 0
    sprite_index = sprTailsJump;
    mask_index = sprTailsJumpMask;
    up = false
}
if scr_input_get("jump","check") && jmpframes > 0
{
    sprite_index = sprTailsJump;
    mask_index = sprTailsJumpMask;
    stopping = 0
    jmpframes -= 1
    vspeed = -6
}
if scr_input_get("jump","released")
{
    jmpframes = 0
}

//Up
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
}


//Ducking
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_down)
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

if rolling == true && (ground == false or global.vel == 0)
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
    sprite_index = sprTailsUp;
    if image_index < 1 image_speed = 0.1;
    else image_speed = 0; canMove = false;
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

//Fly
if Idie_mode = false
{
    if Fly = true && scrFlightCancelCheck()
    {
        FlyTime = 0
        Fly = false
        sound_stop(global.S_tailstired)
        sound_stop(global.S_tailsfly)
        sprite_index = sprTailsJump;
        mask_index = sprTailsJumpMask;
    }
    if ground = false && scr_input_get("jump","pressed") && FlyTime = 220
    {
        Fly = true
        vspeed = 2.3
    }
    if FlyTime > 0 && Fly = true
    {
        if (!sound_isplaying(global.S_tailsfly))
        {
            sound_stop(global.S_tailstired)
            sound_stop(global.S_tailsfly)
            sound_loop(global.S_tailsfly)
        }
        if !scr_input_get("jump","pressed")
        {
            FlyTime -=1
            gravity = 0.1
            //mask_index = sprTailsRacing;
            sprite_index = sprTailsRacing
            mask_index = sprTailsMask;//Fly;
            image_speed = 0.15
        }
        else if scr_input_get("jump","pressed")
        {
            vspeed= -2.5
        }
    }
    if FlyTime <= 0 && Fly = true
    {
        //vspeed = 2.3
        if (!sound_isplaying(global.S_tailstired))
        {
            sound_stop(global.S_tailsfly)
            sound_stop(global.S_tailstired)
            sound_loop(global.S_tailstired)
        }
        gravity = 0.1
        sprite_index = sprTailsRacingTired
        mask_index = sprTailsMask;
        image_speed = 0.15
    }
}
if Fly = false
{
    sound_stop(global.S_tailsfly)
    sound_stop(global.S_tailstired)
}
//Idie
if global.vel = 0 && ground = true && Idie_mode = false && ducking == false && up == false && spindash == false
{
    if IdieTimer >-1
    {
        IdieTimer -= 1
    }
}
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
    sprite_index = sprScaryTailsIdle
    image_speed = 0.12
}

if global.vel != 0 or ducking == true or up == true
{
IdieTimer = 300
Idie_mode = false
}

scr_skidscript()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///legacy fly sound code
/*if Fly = true
{
    if FlyTime >= 0
    {
        if (!sound_isplaying(global.S_tailsfly))
        {
            sound_stop(global.S_tailstired)
            sound_stop(global.S_tailsfly)
            sound_loop(global.S_tailsfly)
        }
    }
    else if (!sound_isplaying(global.S_tailstired))
    {
        sound_stop(global.S_tailsfly)
        sound_stop(global.S_tailstired)
        sound_loop(global.S_tailstired)
    }
}
else
{
    sound_stop(global.S_tailsfly)
    sound_stop(global.S_tailstired)
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
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,ScrapGround)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(x,bbox_top,ScrapGround)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapGround) or place_meeting(bbox_left,y,ScrapGround)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_Warn8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=0
*/
#define Collision_ScrapWall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,ScrapWall)
{
    Fly = false
    FlyTime = 220
    move_contact_solid(270, 4);
    vspeed = 0;
}

if place_meeting(x,bbox_top,ScrapWall)
{
    move_contact_solid(90, 4);
    vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapWall) or place_meeting(bbox_left,y,ScrapWall)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_ScrapWallDestruct
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,ScrapWallDestruct)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(x,bbox_top,ScrapWallDestruct)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapWallDestruct) or place_meeting(bbox_left,y,ScrapWallDestruct)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_ScrapWallExit
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,ScrapWallExit)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(x,bbox_top,ScrapWallExit)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapWallExit) or place_meeting(bbox_left,y,ScrapWallExit)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 4);
vspeed = 0;

/*
if place_meeting(x,bbox_bottom+1,FinalGround)
{
    move_contact_solid(270, 4);
    vspeed = 0;
}

if place_meeting(x,bbox_top,FinalGround)
{
    move_contact_solid(0, 4);
    vspeed = 0;
}
*/
if place_meeting(bbox_right,y,FinalGround) or place_meeting(bbox_left,y,FinalGround)
{
    move_contact_solid(direction, 0.1)
    drawAngle = 0
    global.vel = 0
}
#define Collision_HalfSolid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*move_contact_solid(direction, 0.1);
drawAngle = 0
global.vel = 0

if place_meeting(x,bbox_bottom,HalfSolid)
{
y = y-12
x= x-5
}
#define Collision_HPGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_GroundSolid2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(90, 4);
vspeed = 0;
#define Collision_ScrapElevator
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,ScrapElevator)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(x,bbox_top,ScrapElevator)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,ScrapElevator) or place_meeting(bbox_left,y,ScrapElevator)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_object674
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(Ex4_2,Ex4)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=object677
arg1=x
arg2=y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_PARTYHARDTAILS
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.TLive -= 1
instance_create(x,y,TailsDeath)
with HvostStand instance_destroy()
instance_destroy()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(SonicExSwith)
{
sound_stop(global.S_Lab_S)
room_goto(21)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
