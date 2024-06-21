#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(IntroTails)
{
Act = 1
}

if instance_exists(ScrapWallClean)
{
Act = 2
}

if instance_exists(EGGBot)
{
Act = 3
}

if !instance_exists(IntroTails) && !instance_exists(ScrapWallClean) && !instance_exists(EGGBot)
{
Act = 0
}

if Act = 1 && keyboard_check_pressed(ord("P"))
{
room_goto(8)
}

if Act = 2 && keyboard_check_pressed(ord("P"))
{
sound_stop(global.S_Broke)
sound_stop(global.S_Twister_Start)
room_goto(21)
}

if Act = 3 && keyboard_check_pressed(ord("P"))
{
sound_stop(global.S_Alarm_2)
sound_stop(global.S_BoxBroke)
sound_stop(global.S_MetalBroke)
sound_stop(global.S_Pig_Scream)
room_goto(25)
}
if room = room87 && keyboard_check_pressed(ord("Z"))
{
    room_goto(88)
}
