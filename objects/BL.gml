#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Tails_Plot = false
Knuckles_Plot = false
Eggman_Plot = false

End_1 = false
End_2 = false
End_3 = false

Egg_Death = false

Rene_Active = false

Select_Stage = false

Knuckles_Gotcha = false

T_Ring = false
K_Ring = false
E_Ring = false

Attack = 1
alarm[0] = 60

FF_T = true
FF_K = true
FF_E = true
WallBroker = false

AEC_T = false
AEC_K = false
AEC_E = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Attack += 1
alarm[0] = 10

if Attack = 4
{
Attack = 1
}
#define KeyPress_85
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.Time >=4
{
if instance_exists(AllPers)
{
instance_create(AllPers.x,AllPers.y,Debug_Thing)
with HvostStand
{
instance_destroy()
}
if instance_exists(Pers1)
{
with HvostBlack
{
instance_destroy()
}}
with HvostStand2
{
instance_destroy()
}
with AllPers
{
instance_destroy()
}}}
