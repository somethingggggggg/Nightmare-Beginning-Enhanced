#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
Act = 11
sprite_index = sprExeTable
sound_stop(global.S_Signpost)
sound_play(global.S_ExeFinish)
}
if Act = 2
{
Act = 10
sprite_index = sprTailsTable
if ExePlayer.Bot !=7
{
sound_play(global.S_RaceFail)
}
sound_stop(global.S_Signpost)
}
sound_stop(global.S_Exe_Battle)
#define Collision_ExePlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
    Act = 1
    ExePlayer.maxSpeed = 25
    global.vel = 20
    ExePlayer.Bot = 4
    sound_stop(global.S_Exe_Battle)
    sound_play(global.S_Signpost)
    view_visible[0] = false
    view_visible[1] = true
    alarm[0] = 160
    sprite_index = sprTurnTable
    image_speed = 0.5
}

if Act = 10
{
with FinishTable
{
    path_start(Table_Way,2.5,0,0)
}
    instance_create(44928,2928,Tabls)
    view_visible[0] = false
    view_visible[1] = true
    ExePlayer.Bot = 7
    ExePlayer.image_xscale = 1
}

if Act = 2
{
with FinishTable
{
    path_start(Table_Way,2.5,0,0)
}
    instance_create(44928,2928,Tabls)
    view_visible[0] = false
    view_visible[1] = true
    ExePlayer.Bot = 7
    ExePlayer.image_xscale = 1
}
scr_scaling_wtf()
#define Collision_TailsRacing
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
Act = 2
TailsRacing.Act = 3
sound_stop(global.S_Exe_Battle)
sound_play(global.S_Signpost)
sprite_index = sprTurnTable
image_speed = 0.5
alarm[0] = 160
}
#define Other_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
