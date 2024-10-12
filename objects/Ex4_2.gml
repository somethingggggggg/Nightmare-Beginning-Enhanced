#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(EggmanStop) gravity = 0.25
#define Collision_Egg_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
