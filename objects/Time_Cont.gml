#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_index = 10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=60
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index -= 1
alarm[0] = 60
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Continue_S)
if global.TDetection = true
{
    if !instance_exists(AI_Exe)
    {
        room_goto(10)
    }
else
{
    room_goto(52)
}
}

if global.KDetection = true
{
sound_loop(global.S_You_Can_t_Run)
room_goto(21)
}

if global.EDetection = true
{
room_goto(25)
}

if global.FDetection = true
{
room_goto(32)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_index = -1
{
if global.TDetection = true
{
BL.FF_T = false
sound_stop(global.S_Continue_S)
global.TLive = 0
instance_create(0,0,TPassed)
room_goto(5)
}

if global.KDetection = true
{
instance_create(x,y,KnucklesPreDeath)
BL.FF_K = false
sound_stop(global.S_Continue_S)
global.KLive = 0
instance_create(0,0,KPassed)
room_goto(5)
}

if global.EDetection = true
{
BL.FF_E = false
sound_stop(global.S_Continue_S)
global.ELive = 0
instance_create(0,0,EPassed)
room_goto(5)
}

if global.FDetection = true
{
sound_stop(global.S_Continue_S)
global.FLive = 0
room_goto(62)
}}
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0

if global.TDetection = true
{
Game_Over_T.hspeed = 5
alarm[1] = 120
}

if global.KDetection = true
{
Game_Over_K.sprite_index = sprKnucklesWalk
Game_Over_K.hspeed = 4
alarm[1] = 120
}

if global.EDetection = true
{
Game_Over_E.sprite_index = sprEggmanWalkBlack
Game_Over_E.hspeed = 4
alarm[1] = 120
}

if global.FDetection = true
{
with Game_Over_FaExe
{
instance_destroy()
}
alarm[1] = 120
}
