#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
image_speed = 0.15
Act = 0
if PersonalChoiser.Tails_Pers = true
{
view_object[0] = DF_Tails
BL.AEC_T = true
if BL.Knuckles_Plot = true
{
alarm[0] = 180
}
else
{
alarm[1] = 180
}}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true) or (BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = false)
{
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 132
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Eggman_Plot = true
{
    DF_Tails.hspeed = -1
    DF_Knuckles.hspeed = -1
    instance_create(DF_Eggman.x,DF_Eggman.y-150,DF_Exe)
}
else
{
    instance_create(DF_Knuckles.x+350,DF_Knuckles.y-20,DF_Exe)
    DF_Exe.sprite_index = sprDF_Spindash
    DF_Exe.hspeed = -8
    DF_Exe.image_xscale =-1
    sound_play(global.S_Spindash)
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with DF_Exe
{
sprite_index = sprDF_Spindash
image_xscale = -1
sound_play(global.S_Spindash)
hspeed = -7
DF_Tails.alarm[3] = 50
}
if PersonalChoiser.Tails_Pers = true
{
sprite_index = sprTailsJump
vspeed =-6
image_xscale = 1
DF_Knuckles.image_xscale = 1
}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.hspeed = 0
DF_Tails.image_xscale =-1
with DF_Knuckles
{
    hspeed = 0
    x = x-20
    image_speed = 0
    sprite_index = sprKnucklesPreDeath
}
DF_Exe.image_xscale =1
DF_Exe.sprite_index = sprDF_ExeStand
alarm[4] = 60
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprTailsWalk
hspeed =-2
alarm[5] = 80
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_hspeed[4] = 0
background_hspeed[5] = 0
hspeed = 0
sprite_index = sprTails
alarm[6] = 120
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 138
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprTailsSpindash
sound_play(global.S_Spindash)
alarm[8] = 60
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 8
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if sprite_index = sprTailsSpindash exit;
if image_alpha = 1
{
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
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index != sprTailsSpindash
{
    sprite_index = sprTails
    move_contact_solid(270, 4);
    vspeed = 0;
}
#define Collision_DF_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprTailsSpindash
{
    sound_play(global.S_FinalSpindash)
    room_goto(81)
}

if PersonalChoiser.Knuckles_Pers = true && Act = 0
{
    Act = 1
    hspeed = DF_Exe.hspeed
    sprite_index = sprTailsHit
}

//the fuck is this?

//Fuck, its for tails pulling on exetior for some reason
if PersonalChoiser.Eggman_Pers = true && Act = 0
{
    Act = 1
    image_speed = 0.1
    hspeed = 0
    sprite_index = sprTailsBlackPulls
}

if PersonalChoiser.Eggman_Pers = true && BL.Knuckles_Plot = false && sprite_index != sprTailsHit
{
    sprite_index = sprTailsHit
    image_speed = 0.2
    sound_play(global.S_Wall_Fall)
    sound_play(global.S_Spindash)
    DF_Eggman.alarm[2] = 30
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(psGrayscale())
shader_pixel_uniform_f("fade",0.5)
draw_self()
shader_reset()
