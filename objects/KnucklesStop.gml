#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 1
global.vel = 0
hspeed = 0
global.Sprite_mode = true
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=120
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Noice
arg1=x
arg2=y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_Noice)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=3
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=90
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=Noice
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -1
sound_stop(global.S_Noice)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=20
arg1=2
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_Noice)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Noice
arg1=x
arg2=y
*/
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Note_3
arg1=x
arg2=y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Noice)
sound_play(global.S_Speak_3)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=150
arg1=4
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=Noice
invert=0
*/
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=ScrapWall
arg1=14880
arg2=208
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=Note_3
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=Ex4_2
invert=0
arg0=000100000
arg1=5
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprKnucklesPunchScary
arg1=0
arg2=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=Ex4_2
invert=0
arg0=sprEx14
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Ex4_2
*/
view_object[0] = Ex4_2
image_angle -= 1
sound_stop(global.S_Speak_3)
sound_play(global.S_ExeBeat)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=5
*/
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=Ex4_2
invert=0
arg0=000010000
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprKnucklesStandScary
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_NoiceKS)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=360
arg1=6
*/
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop(global.S_Mindfuckery)
view_object[0] = Ex14
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex14
arg1=14704
arg2=304
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex7
arg1=15328
arg2=288
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=120
arg1=7
*/
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = Knuckles
instance_change(Knuckles,KnucklesStop)
if global.hardmode = 1 instance_create(0,0,DPHARDKNUCK)
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
