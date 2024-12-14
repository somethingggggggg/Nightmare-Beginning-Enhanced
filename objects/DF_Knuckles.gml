#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
image_speed = 0.15
if PersonalChoiser.Knuckles_Pers = true
{
view_object[0] = DF_Knuckles
BL.AEC_K = true
if BL.Tails_Plot = true
{
alarm[0] = 180
}
else
{
alarm[1] = 180
}}
Act = 0
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
    background_hspeed[4] = 0
    background_hspeed[5] = 0
    instance_create(DF_Tails.x+300,DF_Tails.y-20,DF_Exe)
    DF_Exe.sprite_index = sprDF_Spindash
    DF_Exe.hspeed =-8
    DF_Knuckles.sprite_index = sprKnucklesStand
    DF_Tails.sprite_index = sprTails
    DF_Exe.image_xscale =-1
    sound_play(global.S_Spindash)
    DF_Knuckles.alarm[3] = 100
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
    DF_Knuckles.alarm[3] = 60
}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.hspeed = 0
image_xscale =-1
with DF_Tails
{
    hspeed = 0
    x = x-40
    sprite_index = sprWorstTails
}
with HvostBlack
{
    instance_destroy()
}
DF_Exe.image_xscale = 1
DF_Exe.sprite_index = sprDF_ExeStand2
alarm[4] = 60
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -2
sprite_index = sprKnucklesWalk
alarm[5] = 35
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with DF_Exe
{
sprite_index = sprDF_Spindash
hspeed = 7
sound_play(global.S_Spindash)
}
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 150
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Wall_Fall)
DF_Exe.sprite_index = sprDFAttack2
image_speed = 0.2
sprite_index = sprDFKnucklesKick
vspeed = -6
hspeed = 9
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.sprite_index = sprDF_ExeStand2
DF_Exe.hspeed = 0
alarm[9] = 60
#define Alarm_9
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 153
#define Alarm_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Twister_Start)
sprite_index = sprKnucklesTwister
image_speed = 0.3
DF_Exe.sprite_index = sprDF_ExeDeath
instance_create(DF_Exe.x,DF_Exe.y-2,DF_Head)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprKnucklesWalk
{
    if place_meeting(x, y, FF_Ground)
    {
        gravity = 0;
        while place_meeting(x,y,FF_Ground)
        {
            y -= 1
        }
    }
    exit;
}
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
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprKnucklesWalk
{
    gravity = 0;
    while place_meeting(x,y,FF_Ground)
    {
        y -= 1
    }
}
else
{
    if sprite_index = sprDFKnucklesKick
    {
        move_contact_solid(270, 4);
        vspeed = 0;
        hspeed = 0
        sprite_index = sprKnucklesDie
        image_speed = 0.1
        DF_Exe.sprite_index = sprDGExeMoveSlow
        DF_Exe.image_speed = 0.15
        DF_Exe.hspeed = 1.5
        alarm[8] = 277
    }
    move_contact_solid(270, 4);
    vspeed = 0;
}
#define Collision_DF_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if PersonalChoiser.Knuckles_Pers = false && PersonalChoiser.Eggman_Pers = false && Act = 0
{
    Act = 1
    hspeed = DF_Exe.hspeed
    DF_Tails.alarm[3] = 30
    sprite_index = sprDFKnucklesAgony
}

if PersonalChoiser.Knuckles_Pers = true && Act = 0 && hspeed !=0 && DF_Exe.sprite_index != sprDF_ExeDeath
{
    Act = 1
    hspeed = 0
    sprite_index = sprDFKnucklesFight
    image_speed = 0.2
    DF_Exe.image_speed = 0.15
    DF_Exe.hspeed = 0
    DF_Exe.sprite_index = sprDFExeFight
    alarm[6] = 60
}

if PersonalChoiser.Eggman_Pers = true && (sprite_index != sprDFKnucklesAgony && sprite_index != sprKnucklesPreDeath)
{
    sprite_index = sprDFKnucklesAgony
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
