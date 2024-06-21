#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000001000
arg1=2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprSonicWalk
arg1=0
arg2=0.15
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=120
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 102
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 && Act = 0
{
image_alpha +=0.002
}

if image_alpha >= 1 && Act = 0
{
image_alpha = 1
Act = 1
alarm[0] = 160
}
