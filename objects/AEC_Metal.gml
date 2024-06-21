#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_xscale = -1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=6420
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=4
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_hspeed[0] = 0
background_hspeed[4] = 0
hspeed = -3
alarm[1] = 90
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
sprite_index = sprEGG_Shower
y=y+2
alarm[2] = 120
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[7],view_yview[7],SW_Control)
SW_Control.Page = 188
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_AverageEndings2)
background_visible[5] = true
alarm[5] = 240
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[7],view_yview[7],SW_Control)
SW_Control.Page = 190
SW_Control.jink = 19
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=332
invert=0
*/
