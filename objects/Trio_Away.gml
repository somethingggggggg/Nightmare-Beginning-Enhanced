#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[7],view_yview[7],SW_Control)
SW_Control.Page = 190
SW_Control.jink = 19
image_speed = 0.2
image_xscale = 0
image_yscale = 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=4850
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=332
invert=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 1 image_xscale += 0.02
if image_yscale < 1 image_yscale += 0.02
/*if sprite_index = sprTrio_Away1 && image_index <11
{
image_speed = 0.3
sprite_index = sprTrio_Away1
}
else
{
sprite_index = sprTrio_Away2
image_speed = 0.2
}
