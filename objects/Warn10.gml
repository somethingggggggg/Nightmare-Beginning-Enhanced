#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex4_2
arg1=Knuckles.x-25
arg2=Knuckles.y-10
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Ex4_2
*/
image_xscale = 1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Knuckles
*/
sound_stop(global.S_You_Can_t_Run)
sound_play(global.S_Scream_1)
instance_change(KnucklesStop,Knuckles)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
