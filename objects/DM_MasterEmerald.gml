#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
Act = 0
Activate = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y-144,PowerRay)
PowerRay.depth = -1
sound_stop_all()
sound_play(global.S_Ray)
alarm[1] = 180
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with PowerRay
{
instance_destroy()
}
DM_Sonic.alarm[1] = 3600
DM_Sonic.alarm[2] = 30
DM_Sonic.Bot = 3
DM_Sonic.Hyper_mode = true
sound_loop(global.S_Hyper)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if image_alpha = 1
{
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
} }
#define Collision_BIG_MEME_KNUX
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Ring);
sound_play(global.S_WellRing)
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
sound_play(global.S_Wall_Fall)
Act = 1
}
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,DM_Sonic.bbox_bottom,DM_Sonic) && DM_Sonic.Bot = 3 && DM_Sonic.Hyper_mode = false
{
DM_Sonic.Bot = 1
alarm[0] = 120
}
