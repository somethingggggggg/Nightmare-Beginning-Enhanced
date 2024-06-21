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
if instance_exists(TailsIcon)
{
TailsIcon.image_alpha = 0
}
if instance_exists(SonicIcon)
{
SonicIcon.image_alpha = 0
}
Act = 2
sound_stop_all()
transition_kind = 21
room_goto(3)
#define KeyPress_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
Act = 1
alarm[0] = 180
}
#define KeyRelease_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0
Act = 0
