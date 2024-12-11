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
image_blend = $282828
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
ButtonPressedLeftOrRight = keyboard_check(vk_right) - keyboard_check(vk_left)
if global.hardmode = 1
{
    view_angle[0] += 0.1
}
//Movement
if Bot = 0
{
sprite_index = sprEGGBotWalk;
mask_index = sprEggmanBlackMask;
if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) or (keyboard_check(vk_left) && keyboard_check(vk_right))
{
    sprite_index = sprEGGBotStand
    mask_index = sprEggmanBlackMask;
}
if ButtonPressedLeftOrRight != 0 && (canMove == true or (rolling == true && hspeed > 0))
{
    if global.Eggmovement = 1 whatvel += (acc * (1+ground))*ButtonPressedLeftOrRight
    else whatvel = maxSpeed*ButtonPressedLeftOrRight
    //x += -maxSpeed
}
/*
if keyboard_check_released(vk_left) or (place_meeting(x+(abs(hspeed)*-1)-1, y, Egg_Ground) or place_meeting(x+(abs(hspeed)*-1)-1, y, Solid))
{
    hspeed = 0
}
*/
/*
if keyboard_check(vk_right) && (canMove == true or (rolling == true && hspeed < 0))
{
    whatvel += acc * (1+ground);
    //x += maxSpeed
    image_xscale = 1;
    while place_meeting(x,y,Egg_Ground)
    {
        sprite_index = sprEGGBotStand;
        mask_index = sprEggmanBlackMask;
        x -= 1
    }
}
*/
//Deacceleration
//Its "Decelleration" Jaiz
if global.Eggmovement = 1
{
    if ground == true
    {
        if whatvel > 0
           whatvel -= acc/(rolling+1);
        else if whatvel < 0
           whatvel += acc/(rolling+1);
    }
    //Speed limit
    whatvel = clamp(whatvel,-maxSpeed,maxSpeed)

    if whatvel > -acc && whatvel < acc
    {
        whatvel = 0;
    }
}
else
{
    if ButtonPressedLeftOrRight = 0
    {
        whatvel = 0;
    }
}
x += whatvel
mask_index = sprEggmanBlackMask;
if place_meeting(x,y,Egg_Ground)
{
    if whatvel != 0
    {
        while place_meeting(x,y,Egg_Ground)
        {
            x -= acc * sign(whatvel)
        }
        whatvel = 0
    }
    //sprite_index = sprEGGBotStand;
    //mask_index = sprEggmanBlackMask;
}
//fun
//if whatvel != 0 image_xscale = 1*whatvel;
if ButtonPressedLeftOrRight != 0 image_xscale = 1*ButtonPressedLeftOrRight;
if place_meeting(x,y,Egg_Ground)
{
    while place_meeting(x,y,Egg_Ground)
    {
        x += /*acc * */image_xscale
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
    sprite_index = sprEggmanJump;
    mask_index = sprEggmanBlackMask;
    ground = false;
    gravity = 0.25;
}

image_speed = 0.2

if canSpriteChange == true
{
    if ground == true && ducking == false && rolling == false && spindash == false
    {
        if whatvel = 0
        {
            sprite_index = sprEGGBotStand;
            mask_index = sprEggmanBlackMask;
            image_speed = 0.15;
        }
        else if whatvel > -3 && whatvel < 3
        {
            sprite_index = sprEGGBotStroll;
            mask_index = sprEggmanBlackMask;
            image_speed = abs(whatvel/20);
        }
        else
        {
            sprite_index = sprEGGBotWalk;
            mask_index = sprEggmanBlackMask;
            image_speed = abs(whatvel/20);
        }
    }
    else if sprite_index == sprEggmanJump
    {
        sprite_index = sprEggmanJump;
        mask_index = sprEggmanBlackMask;
        image_speed = (whatvel/2)
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

if ground = 0
{
    if vspeed > 0 image_index = 1
    else image_index = 0
}

//Bot
if Bot = 1
{
    if ground = true
    {
        sprite_index = sprEGGBotWalk
        mask_index = sprEggmanBlackMask;
    }
    hspeed = 2
}
if Bot = 3
{
    sprite_index = sprEGGBotStand;
    mask_index = sprEggmanBlackMask;
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
//shader_pixel_set(psGrayscale())
//shader_pixel_uniform_f("fade",-0.5)
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
//shader_reset()
