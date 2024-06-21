#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
Touch = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Touch = true
{
image_index = 1
if !instance_exists(Spring1)
{
instance_create(800,2880,Spring1)
}}

if Touch = false
{
image_index = 0
}
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Touch = false
{
Touch = true
}
