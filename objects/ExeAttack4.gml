#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
Time = 0
Mode = 1
Boss = false
ground = false
jump = false
Hit = false
Grav = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = hspeed*2
alarm[1] = 180
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = hspeed/2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
//Gravity
if Grav = false
{
    if place_meeting(x, y+vspeed+1, FinalGround2)
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
}
if Mode = 1
{
sprite_index = sprFinalExe_Jump
image_speed = 1
hspeed = image_xscale*4
}
if Mode = 2
{
image_speed = 0
sprite_index = sprFinalExePossible_to_beat1
if vspeed < 0
{
image_index = 0
}
if vspeed >= 0
{
image_index = 1
}}
if Mode = 3
{
hspeed = 0
sprite_index = sprFinalExe_Hit
}
if Mode = 4
{
hspeed = 0
sprite_index = sprExWeak
}
if Mode = 5
{
hspeed = 0
sprite_index = sprExLookAround
}
if Mode = 6
{
sprite_index = sprFinalExe_Hit
hspeed = -6
vspeed =-3
Grav = true
}}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(FinalMasterEmerald) && !instance_exists(HP_ExeWeak)
{
Mode =1
image_xscale = -image_xscale
}
#define Collision_FinalGround2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(FinalMasterEmerald) && !instance_exists(HP_ExeWeak)
{
if place_meeting(x,bbox_bottom,FinalGround2)
{
vspeed =-7
Time+=1
}

if Time = 6 or Time = 15 or Time = 25 or Time = 37 or Time = 45 or Time = 54
{
Mode = 2
}
else
{
Mode = 1
}}
else
{
move_contact_solid(270, 4);
vspeed = 0;
}
