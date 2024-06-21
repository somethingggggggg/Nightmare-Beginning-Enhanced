#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
Act = 1
Boss = false
ground = false
alarm[0] = 45
Time = 0
Mode = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Final_Time.Pulse = 0
{
instance_create(4064,2128,FinalSpring)
}
if Final_Time.Pulse = 1
{
instance_create(4096,2128,FinalSpring)
}
if Final_Time.Pulse = 2
{
instance_create(4128,2128,FinalSpring)
}
if Final_Time.Pulse = 3
{
instance_create(4160,2128,FinalSpring)
}
if Final_Time.Pulse = 4
{
instance_create(4192,2128,FinalSpring)
}
if Final_Time.Pulse = 5
{
instance_create(4224,2128,FinalSpring)
}
if Final_Time.Pulse = 6
{
instance_create(4256,2128,FinalSpring)
}
if Final_Time.Pulse = 7
{
instance_create(4288,2128,FinalSpring)
}
if Final_Time.Pulse = 8
{
instance_create(4320,2128,FinalSpring)
}
if Final_Time.Pulse = 9
{
instance_create(4352,2128,FinalSpring)
}
if Final_Time.Pulse = 10
{
instance_create(4384,2128,FinalSpring)
}
if Final_Time.Pulse = 11
{
instance_create(4416,2128,FinalSpring)
}
alarm[0] =45
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
Mode = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
if Boss = false
{
//Gravity
if place_meeting(x, y+vspeed+1, UpGrounder)
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

//Act
if Act = 1
{
image_speed = 0.2
sprite_index = sprFinalExLaugh
hspeed = 0
}
if Act = 2 && Mode = 2
{
sprite_index = sprFinalExe_Hit
y=y-15
Mode = 0
sound_play(global.S_Hit)
}

if Act = 3
{
sprite_index = sprFinalExe_Jump
hspeed = image_xscale*8
}

if Act = 3 && Mode = 0
{
y=y-15
Mode = 1
alarm[1] = 120
}}
else
{
instance_destroy()
}}
#define Collision_UpGrounder
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,UpGrounder)
{
move_contact_solid(270, 4);
vspeed = 0;
}
if Act = 2
{
y=y-10
Act = 3
}
if place_meeting(bbox_right,y,UpGrounder) or place_meeting(bbox_left,y,UpGrounder)
{
image_xscale =-image_xscale
}
