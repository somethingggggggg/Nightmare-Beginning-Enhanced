#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Chase)
sound_loop(global.S_HideSound)
image_speed = 0
Appear = false
Dissappear = true
alarm[0] = 120
alarm[1] = 110
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = false
image_index = 1
alarm[2] = 180
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = true
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Tails_RippedOff)
image_speed = 0.07
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Appear = true
Dissappear = false
global.Tails_mode = false
image_alpha = 0
alarm[4] = 300
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(288,1024,Spring2)
instance_destroy()
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_index = 6
alarm[3] = 60
sound_play(global.S_TimeLine_On)
