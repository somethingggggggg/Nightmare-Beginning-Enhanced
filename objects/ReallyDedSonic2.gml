#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
alarm[0] = 120
Act = 0
SadTails.sprite_index = sprTails
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.BestEnd = true
{
Act = 1
}
else
{
instance_create(view_xview[0], view_yview[0],SW_Control)
SW_Control.Page = 130
SW_Control.jink = 17
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprSonic
alarm[2] = 80
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprDeadSonic
SadTails.sprite_index = sprSadTails2
SadKnuckles.sprite_index = sprSadKnuckles2
SadEggman.sprite_index = sprSadEggman2
SadMetal.sprite_index = sprSadMetal2
alarm[3] = 80
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HvostStand
{
instance_destroy()
}
with SadTails
{
instance_destroy()
}

with SadKnuckles
{
instance_destroy()
}

with ReallyDedSonic2
{
instance_destroy()
}

instance_create(304,240,BestSonic)
instance_create(208,240,BestTails)
instance_create(400,240,BestKnuckles)
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
SadTails.sprite_index = sprSadTails
SadKnuckles.sprite_index = sprSadKnuckles
SadEggman.sprite_index = sprSadEggman
SadMetal.sprite_index = sprSadMetal
instance_create(288,304,GhostSonicWin)
alarm[5] = 540
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
transition_kind = 21
transition_steps = 180
room_goto(85)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
image_speed = 0.1
}

if Act = 1 && image_index > 9
{
image_speed = 0
image_index = 9
Act = 2
alarm[1] = 1
}
