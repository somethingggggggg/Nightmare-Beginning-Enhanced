#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=4800
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_speed = 60
instance_create(528,16,HSE_GA)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HSE_GA
{
instance_destroy()
}
instance_create(0,0,AI_1)
instance_destroy()
