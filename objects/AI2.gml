#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

image_xscale = -1
image_speed = 0.2
mask_index = sprKnucklesStandMask
//image_blend = $808080


if global.Windtime > 0
{
    hspeed = 2.5
}

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
sprite_index = sprKnucklesPunch
mask_index = sprKnucklesStandMask
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
move_contact_solid(270, 4);
vspeed =0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(global.pshader)
shader_pixel_uniform_f("fade",0.5)
draw_self()
shader_reset()
