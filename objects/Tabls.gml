#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
image_speed = 0
}

if Act = 1 && image_index < 10
{
image_speed = 0.1
}
if Act = 1 && image_index >= 10
{
image_speed = 0
image_index = 10
}
