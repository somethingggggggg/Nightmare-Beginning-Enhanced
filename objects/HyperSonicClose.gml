#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.5
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[1] = false
view_visible[0] = true
alarm[1] = 80
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SuperExetior
{
image_xscale = 1
hspeed = 5
sprite_index = sprSuperExetiorWalk
}
alarm[2] = 60
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SuperExetior
{
hspeed = 0
sprite_index= sprSuperExetiorStand
instance_create(x+50,y,DarkSonic2)
}
alarm[3] = 170
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = false
view_visible[1] = true
alarm[4] = 350
alarm[5] = 350
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = true
view_visible[1] = false
view_object[0] = RiseSonic1
alarm[7] = 240
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = true
alarm[6] = 5
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = false
alarm[5] = 5
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[5] = 0
alarm[6] = 0
background_visible[0] = false
with PowerRay
{
instance_destroy()
}
with RiseSonic1
{
sprite_index = sprSonicDown
vspeed = 1.5
}
alarm[8] = 100
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with RiseSonic1
{
vspeed = 0
sprite_index = sprSonic
y = y-2
}
alarm[9] = 120
#define Alarm_9
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Ray)
instance_create(SuperExetior.x,368,PowerRay)
with SuperExetior
{
sprite_index = sprSuperExetiorOut
}
with DarkSonic2
{
instance_destroy()
}
PowerRay.alarm[0] = 100
alarm[10] = 180
#define Alarm_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SuperExetior
{
image_xscale = -1
sprite_index = sprHSE_GARun
y=y+2
image_speed = 0.2
hspeed =-6
}

with RiseSonic1
{
sprite_index = sprSonicRun
image_speed = 0.2
hspeed =-6.1
}
alarm[11] = 250
#define Alarm_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Rise)
room_goto(68)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[1] = true && Act = 0
{
Act = 1
alarm[0] = 220
}

with SuperExetior
{
if sprite_index = sprSuperExetiorOut
{
if image_index < 5
{
image_speed = 0.13
}
if image_index >= 5
{
image_speed = 0
image_index = 5
}}}
