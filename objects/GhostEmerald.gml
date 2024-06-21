#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
if !instance_exists(WinRing)
{
image_alpha = 0.5
}
else
{
image_alpha = 0
}
Act = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1 && image_alpha < 1
{
view_object[0] = GhostEmerald
image_alpha +=0.002
}
if Act = 1 && image_alpha >= 1
{
image_alpha =1
Act = 2
RiseSonic0.alarm[6] = 60
RiseSonic0.image_xscale = 1
}
