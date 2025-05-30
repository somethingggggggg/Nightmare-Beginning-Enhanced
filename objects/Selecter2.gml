#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
state = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch state
{
    case 0: if scr_input_dir_get("up","pressed") state = 1 break;
    case 1: if scr_input_dir_get("down","pressed") state = 2 break;
    case 2: if scr_input_dir_get("left","pressed") state = 3 break;
    case 3: if scr_input_dir_get("right","pressed") state = 4 break;
    case 4:
    sound_stop(global.S_Title_Music)
    room_goto(38)
    break;
}
