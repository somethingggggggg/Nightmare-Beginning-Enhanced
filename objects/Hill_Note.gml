#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
arr[0] = global.S_Green_Hill
arr[1] = global.S_Green_Hill_Evening
arr[2] = global.S_Green_Hill_Night
global.TDetection = true
image_speed = 0
image_index = instance_exists(KPassed) + instance_exists(EPassed)
sound_loop(arr[image_index])
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=Act0_Room(39)
arg1=21
*/
