#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ground = false
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Tails.hspeed = 2
DF_Tails.sprite_index = sprTailsWalk
alarm[1] = 200
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Tails.hspeed = 0
DF_Tails.sprite_index = sprTails
alarm[2] = 60
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 143
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if place_meeting(x, y+vspeed+1, FF_Ground) && vspeed >= 0
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
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_DF_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
    Act = 1
    DF_Exe.image_speed = 0.1
    DF_Exe.sprite_index = sprEx13
    sound_play(global.S_IntoSpike)
    alarm[0] = 1
}
