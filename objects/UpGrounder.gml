#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 300
Act = 0
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
vspeed = 0
image_index = 1
instance_create(4384,2000,ExeAttack2)
view_visible[0] = 0
view_visible[1] = 0
view_visible[3] = 0
view_visible[4] = 0
view_visible[5] = 0
view_visible[6] = 0
view_visible[7] = 0
view_visible[2] = 1
Sounder.refresh = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
vspeed =-9
}
if instance_exists(FinalSonic)
{
if FinalSonic.Bot = 5
{
instance_destroy()
}}
