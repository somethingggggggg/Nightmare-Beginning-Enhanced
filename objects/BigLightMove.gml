#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=119
applies_to=self
invert=0
arg0=Light_Way
arg1=3
arg2=3
arg3=0
*/
#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !collision_line(9904,1888,10000,1888,Egg_Ground,0,1)
{
instance_create(9904,1888,Egg_Ground)
sound_play(global.S_Wall_Fall)
}
