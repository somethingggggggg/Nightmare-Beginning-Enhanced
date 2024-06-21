#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
image_index = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

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
if place_meeting(x,Tails3.bbox_bottom,Tails3)
{
Tails3.vspeed = -15
image_index = 1
sound_play(global.S_Spring)
}

if image_alpha = 1
{
image_alpha = 0.99
alarm[0] = 60
}
Tails3.Fly = false
