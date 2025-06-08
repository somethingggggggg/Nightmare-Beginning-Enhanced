#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed =0.3
background_visible[0] = false
background_visible[1] = true
alarm[0] = 1800
hspeed = image_xscale*1.2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = image_xscale*1.2
if global.hardmode == 1 hspeed = image_xscale * 1.6
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, ScrapGround) && vspeed >= 0
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


if !instance_exists(Debug_Thing)
{
if collision_line(x,y,x,y+200,Knuckles,0,0)
{
with Knuckles
{
instance_change(KnucklesStop2,Knuckles)
}}}
else
{
instance_destroy()
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -image_xscale
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;

if collision_rectangle(x,y,x-10000,y+10000,Knuckles,1,0)
{
image_xscale =-1
hspeed = image_xscale*2
}

if collision_rectangle(x,y,x+10000,y+10000,Knuckles,1,0)
{
image_xscale =1
hspeed = image_xscale*2
}
