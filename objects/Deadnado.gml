#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.3
alarm[0] = 180
hspeed = 10
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 106
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
Act = 2
alarm[1] = 120
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(Deadnado2)
{
instance_create(7100,80,Deadnado2)
}
Deadnado2.hspeed = -1.5


SW_Control.Page = 107
