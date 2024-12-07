#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -8
vspeed = -4
gravity = 0.25
image_speed = 0//.2
alarm[0] = 120
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Knuckles.sprite_index = sprKnucklesStand
alarm[1] = 60
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 157
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Knuckles.sprite_index = sprKnucklesWalk
DF_Knuckles.hspeed = -1
DF_Knuckles.image_speed = 0.1
alarm[3] = 280
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
transition_kind = 21
transition_steps = 180
room_goto(81)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle -= 10
