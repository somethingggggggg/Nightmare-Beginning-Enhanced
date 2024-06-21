#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=250
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
room_goto(18)
}
else
{
room_goto(5)
}
