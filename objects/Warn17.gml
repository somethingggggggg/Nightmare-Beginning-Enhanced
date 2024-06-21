#define Collision_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Sonic.maxSpeed = 4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_IC003969
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
IC003969.maxSpeed = 4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_RiseSonic0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseSonic0
{
hspeed = 0
sprite_index = sprSlaveSonicUp
image_speed = 0
image_index = 1
RiseSonic0.alarm[3] = 120
}
instance_destroy()
