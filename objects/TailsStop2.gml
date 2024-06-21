#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
image_xscale = 1
sound_play(global.S_Dead_1)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=330
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=Ex4_2
invert=0
arg0=sprEx4_4
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprTailsDied
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=13
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
sound_play(global.S_SCREAM_2)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=BR_3_2(14)
arg1=0
*/
#define Collision_HS_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
