#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
image_speed = 0.12
hspeed = -2
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Rise)
alarm[1] = 204
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Cam_Control
arg1=x
arg2=y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=660
arg1=2
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(RiseSonic1.x,RiseSonic1.y,Charasters_Ghost_Close1)
alarm[3] = 85
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(RiseSonic1.x,RiseSonic1.y,Charasters_Ghost_Close2)
alarm[4] = 85
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(RiseSonic1.x,RiseSonic1.y,Charasters_Ghost_Close3)
alarm[5] = 220
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(RiseSonic1.x,RiseSonic1.y,Charasters_Ghost_Close4)
alarm[6] = 90
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseSonic1
{
sprite_index = sprSonicTurnHyper
image_speed = 0.2
vspeed = -1.5
}
alarm[7] = 100
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseSonic1
{
vspeed = 0
}
instance_create(560,112,PowerRay)
GhostEmerald.image_alpha = 1
alarm[8] = 60
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = SuperExetior
alarm[9] = 50
#define Alarm_9
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprSuperExetiorTurn
alarm[10] = 30
#define Alarm_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = true
alarm[11] = 30
#define Alarm_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = false
background_visible[0] = false
view_visible[1] = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_line(x,y,x,y-100,Charasters_Rectangle,1,0) && Act = 0
{
hspeed = 0
sprite_index = sprSuperExetiorStand
Act = 1
alarm[0] = 90
}
