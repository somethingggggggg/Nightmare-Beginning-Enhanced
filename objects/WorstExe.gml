#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -1
image_speed = 0.15
ground = true;
MasterEmerald.solid = 1
Act = 0
hspeed = -0.7
global.Suicide = true
camMove = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 2
sprite_index = sprFinalExe_Jump
image_speed = 0.2
vspeed =-0.8
alarm[1] = 120
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprWorstSuperExe
image_alpha = 0.7
vspeed = 0
instance_create(240,144,PowerRay)
PowerRay.sprite_index = sprEvilPowerRay
sound_play(global.S_Ray)
sound_play(global.S_ExeScream)
//alarm[2] = 40
camMove = 1
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[0] = true
{
view_visible[0] = false
view_visible[1] = true
}

alarm[3] = 10
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[1] = true
{
view_visible[1] = false
view_visible[2] = true
}
alarm[4] = 10
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[2] = true
{
view_visible[2] = false
view_visible[3] = true
}
alarm[5] = 10
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[3] = true
{
view_visible[3] = false
view_visible[4] = true
}
alarm[6] = 10
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[4] = true
{
view_visible[4] = false
view_visible[5] = true
}
alarm[7] = 10
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[5] = true
{
view_visible[5] = false
view_visible[6] = true
}
alarm[8] = 10
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_visible[6] = true
{
view_visible[6] = false
background_visible[1] = true
view_visible[0] = true
}
alarm[9] = 10
#define Alarm_9
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_goto(78)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if Act != 2
{
if place_meeting(x, y+vspeed+1, HPGround) or place_meeting(x, y+vspeed+1, MasterEmerald) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}}

if collision_line(x,y,x-50,y,MasterEmerald,1,0) && Act = 0
{
    sound_play(global.S_Jump)
    Act = 1
    vspeed = -7
    hspeed = -1.5
    sprite_index = sprFinalExe_Jump
}

if camMove
{
    view_hview[0] -= 4
    view_xview[0] += 2
    view_yview[0] += 2
    if global.fourbythree != 0 view_wview[0] = view_hview[0]/3*4
    else view_wview[0] = view_hview[0]/9*16
    Sounder.refresh = 1
}
if view_hview[0] < 20 room_goto(78)
#define Collision_HPGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_MasterEmerald
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
hspeed = 0
sprite_index = sprFinalExe_Stand
alarm[0] = 120
