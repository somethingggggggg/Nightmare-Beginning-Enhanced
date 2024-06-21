#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Tails3)
{
if !place_meeting(x,y,Tails3) or (place_meeting(x,y,Tails3) && Tails3.sprite_index != sprHorrorTailsDuck)
{
Tails3.image_alpha = 1
}}
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,Tails3) && Tails3.sprite_index = sprHorrorTailsDuck
{
Tails3.image_alpha = 0.4
}
