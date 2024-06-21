#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.lang = 0
{
    sprite_index = sprWorstNote
}
if global.lang = 1
{
    sprite_index = sprWorstNoterus
}
if global.lang = 2
{
    sprite_index = sprWorstNoteita
}
image_alpha = 0
alarm[0] = 240
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
image_alpha += 0.01
}
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_goto(85)
