#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -1
image_speed = 0.2
vel = 0
Bot = 0
Act = 0
Phase = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprKnucklesStandScary
image_xscale =-1
instance_create(view_xview[1],view_yview[1],SW_Control)
SW_Control.Page = 122
SW_Control.jink = 7
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x += vel;
//Gravity
if Bot = 0
{
if place_meeting(x, y+vspeed+1, HPGround) && vspeed >= 0
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
}}
if !instance_exists(HP_Metal)
{
vel =HPE.vel
}

background_hspeed[1] = vel/-2
background_hspeed[2] = vel/-2
background_hspeed[3] = vel/-2
background_hspeed[4] = vel/-2

if collision_point(x+50,y,HP_Exe,1,1)
{
if Act = 0
{
with HPK
{
vel = 0
}

with HP_Exe
{
vel = 0
x=x+300
}
x=x+300
view_visible[1] = false
view_visible[0] = true
with FinalSonic
{
x =4240
y =4265
}

Act = 1
}
}
#define Collision_HPGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_HP_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
with HPK
{
vel = 0
}

with HP_Exe
{
vel = 0
x=x+300
}
x=x+300
view_visible[1] = false
view_visible[0] = true
with FinalSonic
{
x =4240
y =4265
}

Act = 1
}
#define Collision_HP_Metal
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if HP_Metal.hspeed =0 && Act = 1
{
vel = 0
Act = 2
view_visible[1] = false
view_visible[0] = true
}
