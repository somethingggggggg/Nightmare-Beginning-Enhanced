#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(TailsFatality)
{
if instance_exists(Tails3)
{
if !place_meeting(x,y,Tails3)
{
Tails3.image_alpha = 1
}}

if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}}

if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
image_alpha +=0.01
}}

if image_alpha <= 0
{
image_alpha = 0
}
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(TailsFatality)
{
if place_meeting(x,y,Tails3)
{
Tails3.image_alpha = 0.4
}}
