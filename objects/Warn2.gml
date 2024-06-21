#define Collision_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=FalseSonic
arg1=288
arg2=400
*/
#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.E_Ring = false
{
instance_create(160,272,TR1)
TR1.sprite_index = sprLTR
}
if global.ELive < 3
{
instance_create(160,256,EggmanLive)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Tails3.maxSpeed = 0
instance_create(Tails3.x,Tails3.y,HS_Cam)
view_object[0] = HS_Cam
instance_destroy()
#define Collision_HP_Metal
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HP_Metal
{
hspeed = 0
image_index = 1
image_xscale = 1
sprite_index = sprHP_MetalCatch
image_speed = 0.5
}
with HP_Exe
{
vel = 0
image_alpha = 0
}
HPK.alarm[0] = 120
instance_destroy()
