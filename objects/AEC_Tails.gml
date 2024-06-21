#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.3
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
arg1=3
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_hspeed[1] = 0
background_hspeed[3] = 0
hspeed = 3
alarm[1] = 70
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
sprite_index = sprTails
alarm[2] = 180
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_AverageEndings2)
background_visible[5] = true
alarm[4] = 240
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[7],view_yview[7],SW_Control)
SW_Control.Page = 190
SW_Control.jink = 19
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=332
invert=0
*/
