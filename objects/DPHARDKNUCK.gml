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
spawnedinstance = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(Knuckles) exit;
perass=irandom_range(1,3)
switch perass
{
    case 1:
        spawnedinstance = instance_create(view_xview[0]-1386+view_wview[0]/2,Knuckles.y,Ex11)
        spawnedinstance.hspeed = 8
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak2,1,1,-1)
        }
    break;
    case 2:
        spawnedinstance = instance_create(view_xview[0]+1386+view_wview[0]/2,Knuckles.y,Ex11)
        spawnedinstance.hspeed = -8
        spawnedinstance.image_xscale = -1
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak1,1,1,1)
        }
    break;
    case 3:
        instance_create(view_xview[0],view_yview[0],Ex12_9)
        if BL.FF_E = true
        {
            sound_play_ex(global.S_Egg_Speak3,1,1,0)
        }
    break;
}
perass1 = irandom_range(300,500)
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
