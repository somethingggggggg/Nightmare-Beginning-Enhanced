#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Up = false
Down = false
Left = false
Right = false
Access = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Access = true
{
sound_stop(global.S_Title_Music)
room_goto(38)
}
#define KeyPress_37
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Up = true && Down = true
{
Left = true
}
#define KeyPress_38
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Up = true
#define KeyPress_39
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Up = true && Down = true && Left = true
{
Right = true
Access = true
}
#define KeyPress_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Up = true
{
Down = true
}
