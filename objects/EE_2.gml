#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TimeOver = 180
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !place_meeting(x,y,AllPers) exit;

if AllPers.up = 1
{
    TimeOver -= 1
}
else
{
    TimeOver = 180
}

if TimeOver < 0
{
    sound_stop_all()
    room_goto(15)
}
#define Collision_Warn2_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
