#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
    uod = scr_input_dir_get("down","pressed") - scr_input_dir_get("up","pressed")
    if uod != 0
    {
        image_index = clamp(image_index+uod,0,image_number-1)
        sound_play(global.S_Ring)
    }
}
