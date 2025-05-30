#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=flscr
var_value=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
prevSpeed = 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=425
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room = 66 && global.cheats = 0 exit;

if keyboard_check_pressed(vk_numpad0)
{
    prevSpeed = room_speed
    room_speed = 400
}

if keyboard_check_released(vk_numpad0)
{
    room_speed = prevSpeed
}
/*
if keyboard_check(vk_alt) && scr_input_get("enter","pressed") or keyboard_check_pressed(vk_alt) && keyboard_check(vk_enter)
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
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
prevSpeed = room_speed
