#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -1
#define Collision_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=BR_10(72)
arg1=0
*/
#define Collision_Luigikid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Luigikid
{
instance_create(x,y,EEExplode)
instance_destroy()
}
instance_destroy()
#define Collision_IC003969
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with IC003969
{
instance_create(x,y,EEExplode)
instance_destroy()
}
instance_destroy()
