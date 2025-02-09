#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
Act = 1
Speed = 3
if global.hardmode > 0
{
    Speed = 3.8
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers)
{
    move_towards_point(AllPers.x,AllPers.y,Speed)
    if AllPers.x>x image_xscale = 1
    else image_xscale = -1
}
else
{
    hspeed = 0;
    vspeed = 0
}
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
room_goto(23)
