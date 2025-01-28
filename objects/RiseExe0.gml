#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 5
hspeed = 0
vspeed = 0
instance_create(1168,160,PowerRay)
PowerRay.sprite_index = sprEvilPowerRay
sound_play(global.S_Ray)
alarm[1] = 180
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[2] = 120
with PowerRay
{
instance_destroy()
}
sprite_index = sprSuperExeCreate
hspeed = -0.4
vspeed = 0.8
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
vspeed = 0
sprite_index = sprSuperExetiorStand
alarm[3] = 60
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 184
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
transition_kind = 21
transition_steps = 180
if global.vidCutscn = 0 room_goto(69) //nice
else room_goto(93)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1 && image_alpha < 1
{
image_alpha += 0.01
}
if Act = 1 && image_alpha >= 1
{
image_alpha = 1
Act = 2
RiseSonic0.sprite_index = sprSlaveSonic
RiseSonic0.alarm[4] = 100
}

if Act =3 && !instance_exists(SW_Control)
{
Act =4
sprite_index = sprWorstSuperExe
image_speed = 0.2
alarm[0] = 120
}

if Act =4
{
hspeed = 0.4
vspeed =-0.8
}
#define Collision_RiseSonic0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
sprite_index = sprExFuckItAll
y -= 11

with RiseSonic0
{
sound_play(global.S_Hit)
sprite_index =sprSlaveSonicHit
hspeed = 9
vspeed = -5
}
