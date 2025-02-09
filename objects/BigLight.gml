#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.1
if global.hardmode = 1
{
    path_speed = 3.5
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
if instance_exists(Egg_Controler)
{
if Egg_Controler.Act = 1
{
instance_destroy()
}}
*/
#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=Eggman
invert=0
arg0=EggmanStop
arg1=x
arg2=y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=Eggman
invert=0
*/
