#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
#define KeyPress_38
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
if image_index = 0
{
image_index = 0
}

if image_index != 0
{
image_index -= 1
}
sound_play(global.S_MS_Move)
}
#define KeyPress_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
if image_index = 2
{
image_index = 2
}

if image_index != 2
{
image_index += 1
}
sound_play(global.S_MS_Move)
}
