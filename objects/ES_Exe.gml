#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000001000
arg1=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=260
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=1500
arg1=11
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=ES_Creeps
*/
image_xscale = -1
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
ES_Creeps.y = ES_Creeps.y+3
ES_Creeps.sprite_index = sprDeadlySonic
sprite_index = sprEx2
alarm[2] = 300
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=240
arg1=2
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ES_Creeps.y = ES_Creeps.y-3
ES_Creeps.sprite_index = sprSonicAngrySmile
alarm[3] = 190
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ES_Creeps.sprite_index = sprSonicAngrySmile2
sprite_index = sprFinalExe_Hit
y=y-20
alarm[4] = 180
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprExeHurt
image_speed = 0.2
alarm[5] = 190
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Creep_Back.image_alpha = 0.5
alarm[6] = 180
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ES_Creeps.sprite_index = sprES_Creeps
ES_Creeps.y = ES_Creeps.y-12
//image_speed = 0.15
image_speed = 0
image_index = 0
sprite_index = sprExeHurtCircle
#define Alarm_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 91
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprExeHurtCircle
{
    image_angle += 4
}
