#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TailsWatched) && TailsWatched.image_xscale = 1
{
image_xscale = 1
move_snap(TailsWatched.x-5,TailsWatched.y+4)
}

if instance_exists(TailsWatched) && TailsWatched.image_xscale = -1
{
image_xscale = -1
move_snap(TailsWatched.x+5,TailsWatched.y+4)
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TailsWatched) && TailsWatched.image_xscale = 1
{
image_xscale = 1
move_snap(TailsWatched.x-5,TailsWatched.y+4)
}

if instance_exists(TailsWatched) && TailsWatched.image_xscale = -1
{
image_xscale = -1
move_snap(TailsWatched.x+5,TailsWatched.y+4)
}
