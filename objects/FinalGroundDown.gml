#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(FinalGroundDown2,FinalGroundDown)
#define Collision_Line_Crusher
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
Act = 1
alarm[0] = 20
}
