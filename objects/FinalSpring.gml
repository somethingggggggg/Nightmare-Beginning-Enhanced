#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
vspeed = -3.5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
image_index = 0
#define Collision_FinalSonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,FinalSonic.bbox_bottom,FinalSonic)
{
FinalSonic.vspeed = -10
image_index = 1
sound_play(global.S_Spring)
instance_destroy()
}
