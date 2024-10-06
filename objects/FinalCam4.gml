#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
view_object[0] = FinalCam4
alarm[0] =2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act +=1
alarm[0] = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
if Act >1
{
Act = 0
}}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
    if Act = 0
    {
        x = FinalSonic.x + irandom_range(-1,1)
        y = FinalSonic.y + irandom_range(-1,1)
        //move_snap(FinalSonic.x-3,FinalSonic.y-4)
    }

    if Act = 1
    {
        x = FinalSonic.x + irandom_range(-1,1)
        y = FinalSonic.y + irandom_range(-1,1)
        //move_snap(FinalSonic.x+3,FinalSonic.y+4)
    }
}
