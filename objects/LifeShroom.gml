#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act=0
hspeed=1
gravity=0.2
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.SLive += 1
sound_play(global.S_ExtraLife)
instance_destroy()
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed=0
