#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=680
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[7] = 650
spawnedinstance = 0
global.Windtime = 0
if global.hardmode = 1
{
    alarm[6] = 360
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
perass=irandom_range(1,6)
if room = 21 && !(perass = 1 or perass = 2 or perass = 4)
{
    do perass = irandom_range(1,6)
    until !(perass = 1 or perass = 2 or perass = 4)
}
switch perass
{
    case 1:
        instance_create(0,256,Ex11_3)
        Ex11_3.hspeed = 8
    break;
    case 2:
        instance_create(8272,304,Ex11_2)
        Ex11_2.hspeed =-8
    break;
    case 3:
        spawnedinstance = instance_create(view_xview[0]-1386+view_wview[0]/2,368,Ex11)
        spawnedinstance.hspeed = 8
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak2,1,1,-1)
        }
    break;
    case 4:
        instance_create(view_xview[0]+1386+view_wview[0]/2/*8272*/,272,Ex12)
        Ex12.hspeed = -8
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak3,1,1,0)
        }
    break;
    case 5:
        spawnedinstance = instance_create(view_xview[0]+1386,368,Ex11)
        spawnedinstance.hspeed = -8
        spawnedinstance.image_xscale = -1
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak1,1,1,1)
        }
    break;
    case 6:
        instance_create(view_xview[0],view_yview[0],Ex12_9)
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak3,1,1,0)
        }
    break;
}
if global.hardmode = 0 perass1 = irandom_range(300,500)
else perass1 = irandom_range(100,200)
/*
if perass=1
{
instance_create(0,256,Ex11_3)
Ex11_3.hspeed = 8
}
if perass=2
{
instance_create(8272,304,Ex11_2)
Ex11_2.hspeed =-8
}
if perass=3
{
    instance_create(view_xview[0]-1386,368,Ex11)
    Ex11.hspeed =8
    if BL.FF_E = true
    {
        sound_play(global.S_Egg_Speak2)
    }
}
if perass=4
{
    instance_create(8272,272,Ex12)
    Ex12.hspeed =-8
    if BL.FF_E = true
    {
        sound_play(global.S_Egg_Speak3)
    }
}
if perass=5
{
instance_create(view_xview[0]+1386,368,Ex11)
Ex11.hspeed =-8
if BL.FF_E = true
{
sound_play(global.S_Egg_Speak1)
}
}
if perass=6
{
instance_create(view_xview[0],view_yview[0],Ex12_9)
if BL.FF_E = true
{
sound_play(global.S_Egg_Speak3)
}
}
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=perass1
arg1=0
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(8272,304,Ex11_2)
Ex11_2.hspeed =-8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=890
arg1=5
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,368,Ex11)
Ex11.hspeed =8
if BL.FF_E = true
{
    sound_play_ex(global.S_Egg_Speak2,1,1,-1)
    //sound_play(global.S_Egg_Speak2)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=1500
arg1=3
*/
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(8272,272,Ex12)
Ex12.hspeed =-8
if BL.FF_E = true
{
    sound_play_ex(global.S_Egg_Speak3,1,1,0)
    //sound_play(global.S_Egg_Speak3)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=620
arg1=4
*/
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(8272,368,Ex11)
Ex11.hspeed =-8
if BL.FF_E = true
{
    sound_play_ex(global.S_Egg_Speak1,1,1,1)
    //sound_play(global.S_Egg_Speak1)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=1250
arg1=0
*/
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],Ex12_9)
if BL.FF_E = true
{
    sound_play_ex(global.S_Egg_Speak3,1,1,0)
    //sound_play(global.S_Egg_Speak3)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=500
arg1=2
*/
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Windtime = 360
alarm[6] = 360 * irandom_range(30,50)/10
with AI1 hspeed = 2.5
with AI2 hspeed = 2.5
with AI3 hspeed = 2.5
background_hspeed[0] = 5
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Smeh)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.Windtime > 0 global.Windtime -= 1
else
{
    if global.Windtime = 0
    {
        with AI1 hspeed = 0
        with AI2 hspeed = 0
        with AI3 hspeed = 0
        background_hspeed[0] = 0
        global.Windtime -= 1
    }
}
