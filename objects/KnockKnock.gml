#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
ground = true;
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
AllPers.canMove = true
view_visible[0] = true
view_visible[1] = false
Sounder.refresh = 1
sound_play(global.S_BoxBroke)
instance_create(x,y,EasterExploy)
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, Solid_Mask) && vspeed >= 0
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

if Act = 0
{
hspeed = image_xscale*1
}
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
Act = 1
with EasterSolid
{
instance_destroy()
}
hspeed = 0
image_index = 0
AllPers.canMove = false
view_visible[1] = true
view_visible[0] = false
Sounder.refresh = 1
sound_play(global.S_WTG)
alarm[0] = 120
}
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_EasterSolid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -image_xscale
