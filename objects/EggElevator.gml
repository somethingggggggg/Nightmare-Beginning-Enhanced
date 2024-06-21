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
if instance_exists(Eggman)
{
if Eggman.Bot = 2 && image_index < 4
{
image_speed = 0.1
}}

if image_index >= 4
{
image_speed = 0
image_index = 4
}
