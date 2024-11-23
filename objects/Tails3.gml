#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
acc = 0.066875;
origacc = 0.066875
global.vel = 0;
maxSpeed = 6;
jmpframes = 0
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
Hide = false
FlyTime = 220
Fly = false
alarm[0] = 360
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
with Warn2
{
instance_destroy()
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if keyboard_check(vk_left) && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && !place_meeting(x+(abs(global.vel)*-1)-1, y, HS_1G) && !place_meeting(x+(abs(global.vel)*-1)-1, y, HalfSolid) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}
if keyboard_check(vk_right) && !place_meeting(x+abs(global.vel)+1, y, Solid) && !place_meeting(x+abs(global.vel)+1, y, HS_1G) && !place_meeting(x+abs(global.vel)+1, y, HalfSolid) && (canMove == true or (rolling == true && global.vel < 0))
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

//Gravity
if place_meeting(x, y+vspeed+1, GroundSolid2) or place_meeting(x, y+vspeed+1, HS_1G) && vspeed >= 0
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
if global.Tails_mode = true
{
if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false
{
   if global.vel = 0
   sprite_index = sprHorrorTails;
 else if global.vel > -6 && global.vel < 6
   sprite_index = sprHorrorTailsWalk;
else
   sprite_index = sprHorrorTailsRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = 1
}
}}

if canSpriteChange == true
{
    if global.Tails_mode = false
    {
        if ground == true && ducking == false && rolling == false && spindash == false && Idie_mode = false
        {
           if global.vel = 0
           sprite_index = sprScaryTailsW;
         else if global.vel > -6 && global.vel < 6
           sprite_index = sprScaryTailsWalkW;
        else
           sprite_index = sprScaryTailsWalkW;

        image_speed = abs(global.vel/20);
        }
        else if sprite_index == sprTailsJump
        {
            image_speed = 1
        }
    }
}


//Up
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && keyboard_check(vk_up)
{
   up = true;
}


//Ducking
if global.Tails_mode = true
{
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
    }
    }
    }
    {
       mask_index = sprTailsMask;
       canMove = true

    }

    if up == true && spindash == false
    {
       mask_index = sprTailsMask;
       sprite_index = sprHorrorTailsUp;
    if image_index < 1
       image_speed = 0.1;
    else
       image_speed = 0;
       canMove = false;
    }


    if ducking == true && spindash == false
    {
       sprite_index = sprHorrorTailsDuck;
    if image_index < 1
       image_speed = 0.1;
    else
       image_speed = 0;
       canMove = false;
    }
}

if global.Tails_mode = false
{
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
   sprite_index = sprScaryTailsUpW;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}


if ducking == true && spindash == false
{
   sprite_index = sprScaryTailsDuckW;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}}

//Jumping
if ground == true && keyboard_check_pressed(ord("Z")) && ducking == false && canMove == true && Idie_mode = false
{
    //vspeed = -7;
    jmpframes = 7
    stopping = 0
    sound_play(global.S_Jump);
    sprite_index = sprTailsJump;
}
if keyboard_check(ord("Z")) && jmpframes > 0
{
    jmpframes -= 1
    vspeed = -6
}
if keyboard_check_released(ord("Z"))
{
    jmpframes = 0
}

//Hide
if image_alpha = 0.4
{
    Hide = true
}
else
{
    Hide = false
}

//Fly
if global.Tails_mode = true
{
    if Fly = true && keyboard_check_pressed(ord("Z")) && keyboard_check(vk_down)
    {
        FlyTime = 0
        Fly = false
        sound_stop(global.S_tailstired)
        sound_stop(global.S_tailsfly)
        sprite_index = sprTailsJump;
        mask_index = sprTailsJumpMask;
    }
    if ground = false && keyboard_check_pressed(ord("Z")) && FlyTime = 220
    {
        Fly = true
        vspeed = 2.3
    }

    if Fly = true && !keyboard_check_pressed(ord("Z"))
    {
        FlyTime -= 1
        gravity = 0.1
        sprite_index = sprTailsRacing
        image_speed = 0.15
    }
    else if Fly = true && keyboard_check_pressed(ord("Z")) && FlyTime > 0
    {
        vspeed = -2.5
    }

    if FlyTime <= 0 && Fly = true
    {
        gravity = 0.1
        sprite_index = sprTailsFlyTired
        image_speed = 0.15
    }
}

if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
image_alpha +=0.01
}}

if image_alpha <= 0
{
image_alpha = 0
}

if view_object[0] = Tails3
{
if global.Tails_mode = false
{
maxSpeed = 3.5
}

if global.Tails_mode = true
{
maxSpeed = 6
}}

//Idie
if view_object[0] = Tails3
{
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
        if global.Tails_mode = true
        {
            sprite_index = sprHorrorTailsIdie
            image_speed = 0.1
        }

        if global.vel != 0 or ducking == true or up == true
        {
            IdieTimer = 300
            Idie_mode = false
        }
    }
}

scr_skidscript()

if global.hardmode = 1
{
        image_xscale = 1
        if global.vel != 0
        {
            drawAngle = -radtodeg(arctan(vspeed/global.vel))
        }
        else
        {
            if vspeed > 0 image_angle = -90
            if vspeed < 0 image_angle = 90
        }
        if global.vel < 0 drawAngle = -radtodeg(arctan(vspeed/global.vel))+180
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///fly sound
if Fly = true
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
hsp = 0
#define Collision_HS_1G
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
if place_meeting(x,bbox_bottom+1,HS_1G)
{
Fly = false
FlyTime = 220
move_contact_solid(270, 4);
vspeed = 0;
}

if place_meeting(x,bbox_top,HS_1G)
{
move_contact_solid(90, 4);
vspeed = 0;
}

if place_meeting(bbox_right,y,HS_1G) or place_meeting(bbox_left,y,HS_1G)
{
move_contact_solid(direction, 0.1)
drawAngle = 0
global.vel = 0
}
if rolling = true
{
rolling = false
}
#define Collision_TeleportRing
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(HSE_Walker)
{
with HSE_Walker
{
instance_destroy()
}
with HSE_GA
{
sprite_index = sprHSE_Sleep
AwakeTime = 400
SleepTimer = 300
SleepTime = true
Phase_2 = false
image_alpha = 1
sound_stop(global.S_Chase)
sound_stop(global.S_HideSound)
sound_loop(global.S_HideSound)
}}
#define Collision_GroundSolid2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(90, 4);
vspeed = 0;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = spr_tailsskid or sprite_index = sprTailsRacing or sprite_index = sprTailsJump draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, $b4b4b4, image_alpha);
else draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, c_white, image_alpha);
