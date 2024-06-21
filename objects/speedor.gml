#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=flscr
var_value=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check(vk_numpad0)
{
room_speed = 400
}

if keyboard_check_released(vk_numpad0)
{
if room_speed = 400
{
room_speed = 60
}}

if keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_alt) && keyboard_check(vk_enter)
{
    if flscr = 0
    {
    window_set_fullscreen(true)
    flscr = 1
    }
    else
    {
    window_set_fullscreen(false)
    flscr = 0
    }
}
