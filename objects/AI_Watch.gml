#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(HSE_Chase)
{
alarm[0] = 2000
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(HSE_Chase)
{
instance_create(view_xview[0]+144,view_yview[0]+128,HSE_Watch)
alarm[1] = 250
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(HSE_Chase)
{
with HSE_Watch
{
instance_activate_object(WinRing)
instance_activate_object(DeathRing)
HvostStand2.depth = 1
Tails3.depth = 0
instance_destroy()
}
alarm[0] = 5000
}
