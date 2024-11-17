#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15

if PersonalChoiser.Tails_Pers = true
{
    view_object[0] = CutTails
    alarm[0] = 1
}

if BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
    alarm[0] = 0
    CutEggman.hspeed = -3
}

if BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
    alarm[0] = 0
    CutKnuckles.hspeed = 4
}


if BL.Tails_Plot = false
{
    image_alpha = 0
    with HvostBlack
    {
        instance_destroy()
    }
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if PersonalChoiser.Tails_Pers = true && sprite_index = sprTailsUpBlack && BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 3
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if PersonalChoiser.Knuckles_Pers = false && PersonalChoiser.Eggman_Pers = false
{
    if instance_exists(CutKnuckles)
    {
        CutKnuckles.hspeed = 4
    }
    if instance_exists(CutEggman)
    {
        CutEggman.hspeed = -3
    }
}

if PersonalChoiser.Knuckles_Pers = true && PersonalChoiser.Eggman_Pers = false
{
    if instance_exists(CutEggman)
    {
        CutEggman.hspeed = -3
    }
}

if PersonalChoiser.Knuckles_Pers = false && PersonalChoiser.Eggman_Pers = true
{
    if instance_exists(CutKnuckles)
    {
        CutKnuckles.hspeed = 4
    }
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=206
relative=0
applies_to=self
invert=0
arg0=Ex11_3
arg1=384
arg2=256
arg3=5
arg4=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=240
arg1=4
*/
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=FF_Act(32)
arg1=21
*/
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 21
}
else if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 42
}
else if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 61
}
else if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
instance_create(0,0,SW_Control)
SW_Control.Page = 83
}
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CutEggman.image_xscale = 1
sound_play(global.S_Metal_Call)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=200
arg1=6
*/
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,SW_Control)
SW_Control.Page = 64
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 27
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 48
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
instance_create(0,0,SW_Control)
SW_Control.Page = 70
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(0,0,SW_Control)
SW_Control.Page = 5
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
