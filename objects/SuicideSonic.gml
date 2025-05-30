#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
acc = 0.066875;
global.vel = 0;
maxSpeed = 0.8;
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
Sprite_mode = false
Bot = 0
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Bot = 2
Act = 2
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 4
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 7
show_message("Don't do it Sonic")
show_message("You can't save us but you have to protect the rest!")
show_message("Keep hope and determination...")
alarm[3] = 180
SH_TailsGhost.Act = 1
SH_KnucklesGhost.Act = 1
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[1] = false
view_visible[2] = true
Sounder.refresh = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Movement
if Bot = 0
{
if scr_input_dir_get("left","check") && !place_meeting(x+(abs(global.vel)*-1)-1, y, Solid) && (canMove == true or (rolling == true && global.vel > 0))
{
  global.vel -= acc * (1+ground);
if global.vel > 0 && ground == false
  global.vel -= acc

if rolling == false
  image_xscale = -1;
}
if scr_input_dir_get("right","check") && !place_meeting(x+abs(global.vel)+1, y, Solid) && (canMove == true or (rolling == true && global.vel < 0))
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
if place_meeting(x, y+vspeed+1, SH_Ground) && vspeed >= 0
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
if Sprite_mode = false
{
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false
{
   if global.vel = 0
   sprite_index = sprSuicideSonicStand;
 else if global.vel > -5 && global.vel < 5
   sprite_index = sprSuicideSonicWalk;
else
   sprite_index = sprTailsRun;

image_speed = abs(global.vel/20);
}
else if sprite_index == sprTailsJump
{
   sprite_index = sprTailsJump;

image_speed = 0.2 + abs(global.vel / 20)
}
}}

//Up
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("up","check")
{
   up = true;
}


//Ducking
if Sprite_mode = false
{
if global.vel == 0 && ground == true && up == false && ducking == false && rolling == false && scr_input_dir_get("down","check")
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

if rolling == true && (ground == false or global.vel == 0)
{
   rolling = false;
   canMove = true;
{
{
}}}
{
   mask_index = sprSonicMask;
   canMove = true

}

if up == true && spindash == false
{
   mask_index = sprSonicMask;
   sprite_index = sprSuicideSonicUp;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}


if ducking == true && spindash == false
{
   sprite_index = sprSuicideSonicDuck;
if image_index < 1
   image_speed = 0.1;
else
   image_speed = 0;
   canMove = false;
}}

{
   mask_index = sprSonicMask;
}

if Bot = 1 && Act = 0
{
Act = 1
alarm[0] = 200
}
if Bot = 1
{
global.vel = 0.8
}

if Bot = 2
{
global.vel = 0
}

if Bot = 2 && Act = 2
{
Act = 3
alarm[1] = 120
}

if Act = 4 && scr_input_get("jump","pressed")
{
    if global.Suicide = true
    {
        Act = 5
        Bot = 3
        vspeed =-7
        sprite_index = sprSonicJump
        image_speed = 0.15
        maxSpeed = 4
        global.vel = 1.8
    }
    if global.Suicide = false
    {
        show_message("Wait!")
        view_visible[0] = false
        view_visible[1] = true
        Sounder.refresh = 1
        Act = 6
        alarm[2] =140
    }
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(direction, 0.1);
drawAngle = 0
#define Collision_SH_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_SuicideSpikes
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_IntoSpike)
instance_destroy()
with SuicideSpikes
{
    sprite_index = sprSuicideSpike2
    alarm[0] = 240
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.dialoguefont)
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
if Act = 4
{
draw_text_color(view_xview[0]+120,view_yview[0]+70,"Press 'Z' to jump",$00ffff,$00ffff,$00ffff,$005555, 1)
}
