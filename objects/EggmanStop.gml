#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.ELive -= 1
image_speed = 0.15
image_xscale = 1
hspeed = 0
global.vel = 0
image_blend = $282828
sound_stop(global.S_Egg_Sound)
sound_play(global.S_Scream_1)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex4_2
arg1=x+30
arg2=y-3
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Ex4_2
*/
sprite_index = sprDarkEx4_3
image_xscale =-1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=185
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = false
view_visible[1] = true
Sounder.refresh = 1
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
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.ELive != 0
{
    sound_stop(global.S_Noice)
    room_goto(53)
}

if global.ELive = 0
{
    instance_create(0,0,EPassed)
    sound_stop(global.S_Noice)
    room_goto(28)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0.25

//view_xview[view_current] += (view_wview[view_current] - lerp(515,view_wview[view_current],0.5))/2
//view_yview[view_current] += (view_hview[view_current] - lerp(290,view_hview[view_current],0.5))/2

view_wview[view_current] = lerp(515,view_wview[view_current],0.5)
view_hview[view_current] = lerp(290,view_hview[view_current],0.5)

view_xview[view_current] = x - (view_wview[view_current]/2)
view_yview[view_current] = y - (view_hview[view_current]/2)
#define Collision_Egg_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
