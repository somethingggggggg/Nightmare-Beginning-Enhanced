#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
image_xscale =-1

if PersonalChoiser.Eggman_Pers = true
{
view_object[0] = CutEggman
hspeed = -3
}

if BL.Eggman_Plot = false
{
instance_destroy()
}

if instance_exists(CutKnuckles) && PersonalChoiser.Tails_Pers != true
{
CutKnuckles.hspeed = 4
}
#define Collision_Warn1_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CutTails.alarm[7] = 10
