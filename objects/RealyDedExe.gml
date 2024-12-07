#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_alpha = 0
Act = 0
state = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if state = 1 && image_alpha > 0
{
    image_blend = $000000
    image_alpha -= 0.005
    ReallyDedSonic.alarm[2] = 2
}
