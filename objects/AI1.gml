#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
global.Windtime = 0
image_blend = $808080
if global.Windtime > 0
{
    hspeed = 2.5
}

if BL.Tails_Plot = false
{
    instance_destroy()
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=130
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = -7
sprite_index = sprTailsJumpBlack
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//Gravity
if place_meeting(x, y+vspeed+1, FF_Ground) && vspeed >= 0
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

if place_meeting(x,y,Solid)
{
    do x -= 1
    until !place_meeting(x,y,Solid)
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprTails
mask_index = sprTailsMask
move_contact_solid(270, 4);
vspeed = 0;
