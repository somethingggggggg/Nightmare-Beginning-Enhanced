#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.TLive -= 1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=300
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.TLive != 0
{
global.Tails_mode = true
room_goto(53)
}

if global.TLive = 0
{
instance_create(160,128,Note_2)
instance_create(0,0,TPassed)
sound_play(global.S_Warp)
sound_play(global.S_Speak_2)
alarm[1] = 380
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
room_goto(18)
}
else
{
room_goto(5)
}
