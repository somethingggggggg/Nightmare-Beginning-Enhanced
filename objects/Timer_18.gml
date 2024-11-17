#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=160
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.End_1 = true
{
    instance_create(160,128,Note_6)
    sound_play(global.S_Speak_7)
}

if BL.End_2 = true
{
    instance_create(160,128,Note_7)
    sound_play(global.S_Speak_8)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=540
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_goto(62)
