#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -1
image_speed = 0.2


if BL.Knuckles_Plot = false
{
BL.FF_K = false
instance_destroy()
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=150
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprKnucklesPunchBlack
alarm[1] = 25
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2

if instance_exists(Pers3)
{
if Pers3.Speaker_Knuckles = true
{
alarm[0] = 50
}

if Pers3.Speaker_Knuckles != true
{
alarm[0] = 110
}
}
else
{
alarm[0] = 110
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index = sprKnucklesStandMask
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
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed =0
