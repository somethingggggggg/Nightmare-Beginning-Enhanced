#define Collision_Tails2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex3
arg1=Tails2.x
arg2=Tails2.y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=object678
arg1=Tails2.x
arg2=Tails2.y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex4
arg1=3696
arg2=320
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_Pers1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.FF_K = true && BL.FF_T = true && BL.FF_E = true
{
BL.End_1 = true
}
else
{
BL.End_2 = true
}
sound_play(global.S_Warp)
sound_stop(global.S_DF_S)
sound_stop(global.S_ChargedUp)
sound_stop(global.S_EGG_Shield)
room_goto(33)
#define Collision_Pers2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.FF_K = true && BL.FF_T = true && BL.FF_E = true
{
    BL.End_1 = true
}
else
{
    BL.End_2 = true
}
sound_play(global.S_Warp)
sound_stop(global.S_DF_S)
sound_stop(global.S_ChargedUp)
sound_stop(global.S_EGG_Shield)
room_goto(33)
#define Collision_Pers3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.FF_K = true && BL.FF_T = true && BL.FF_E = true
{
BL.End_1 = true
}
else
{
BL.End_2 = true
}
sound_play(global.S_Warp)
sound_stop(global.S_DF_S)
sound_stop(global.S_ChargedUp)
sound_stop(global.S_EGG_Shield)
room_goto(33)
#define Collision_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0]+128,view_yview[0]+192,SonicExRunin)
instance_destroy()
#define Collision_Luigikid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0]+128,view_yview[0]+192,SonicExRunin)
#define Collision_IC003969
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0]+128,view_yview[0]+192,SonicExRunin)
