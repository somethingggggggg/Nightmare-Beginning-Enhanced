#define Collision_AI1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if AI1.sprite_index != sprTailsJumpBlack
{
with HvostBlack
{
instance_destroy()
}
with AI1
{
BL.FF_T = false
instance_destroy()
}
instance_destroy()
}
else
{
instance_destroy()
}
#define Collision_AI2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Collision_Pers1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.FF_K = true
{
with AI2
{
instance_change(Pers2,AI2)
view_object[0] = Pers2
}}

if BL.FF_K = false && BL.FF_E = true
{
with AI3
{
instance_change(Pers3,AI3)
view_object[0] = Pers3
}}

if BL.FF_K = false && BL.FF_E = false
{
BL.FF_T = false
BL.End_2 = true
sound_stop(global.S_DF_S)
room_goto(33)
}

with HvostBlack
{
instance_destroy()
}
with Pers1
{
instance_change(Death1,Pers1)
}
BL.FF_T = false
instance_destroy()
#define Collision_Pers2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers2.sprite_index != sprKnucklesTwisterBlack
{
if BL.FF_T = true
{
with AI1
{
instance_change(Pers1,AI1)
view_object[0] = Pers1
}}

if BL.FF_T = false && BL.FF_E = true
{
with AI3
{
instance_change(Pers3,AI3)
view_object[0] = Pers3
}}

if BL.FF_T = false && BL.FF_E = false
{
BL.FF_K = false
BL.End_2 = true
sound_stop(global.S_DF_S)
room_goto(33)
}

with Pers2
{
instance_change(Death2,Pers2)
}
BL.FF_K = false
}
else
{
instance_destroy()
}
#define Collision_EnergyShieldFF
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Collision_SmachDash
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
