#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
rotate_speed = irandom_range(-5,15)/10
//ground = false
if instance_exists(Knuckles)
{
    if Knuckles.Punch = 0 hspeed = 1.5 * global.vel
    else hspeed = 1.5 * image_xscale
}
else
{
    hspeed = 1.5 * global.vel
}
gravity = 0.25;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity

//commented out collision code that can never run in YCR

/*
if place_meeting(x, y+vspeed+1, HZ_1) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}
*/

image_angle += rotate_speed
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
