#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Sound = 0
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


//Sound
if place_meeting(x,y,Tails3) && global.vel !=0 && Sound = 0
{
Sound = 1
sound_play(global.S_BushesSound)
}

if !place_meeting(x,y,Tails3) or global.vel =0
{
Sound = 0
}
