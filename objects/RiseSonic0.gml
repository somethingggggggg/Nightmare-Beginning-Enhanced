#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_xscale=-1
Act = 0
view_object[0] = RiseSonic0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 1
alarm[1] = 100
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=-1
alarm[2] = 120
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprSlaveSonicWalk
image_speed = 0.15
hspeed =-2
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
RiseExe0.Act = 1
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 172
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
GhostEmerald.Act = 1
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = RiseSonic0
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 178
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseExe0
{
sprite_index = sprSonicSpindash
y=y+11
image_speed = 0.3
sound_play(global.S_Spindash)
}
image_xscale = -1
alarm[8] = 60
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseExe0
{
hspeed = 8
sound_play(global.S_Rolling)
}
#define Alarm_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseExe0
{
hspeed = 1
sprite_index = sprHSE_Walk
image_speed = 0.1
}
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 180
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
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
if Act = 0
{
Act = 1
alarm[0] = 100
}
if sprite_index =sprSlaveSonicHit
{
alarm[10] = 60
}
sprite_index = sprSlaveSonic
hspeed = 0
