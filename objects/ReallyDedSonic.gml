#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_alpha = 0.7
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 128
SW_Control.jink = 15
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
RealyDedExe.sprite_index = sprRealyDedExe2
sound_play(global.S_NO)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 3
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with PowerRay
{
instance_destroy()
}
sprite_index = sprReallyDedSonic2
vspeed = 0.7
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
image_alpha -= 0.006
}

if image_alpha < 0 && Act = 0
{
image_alpha = 0
Act = 1
}

if Act = 1
{
RealyDedExe.image_alpha += 0.005
}

if Act = 1 && RealyDedExe.image_alpha > 0.7
{
RealyDedExe.image_alpha = 0.7
Act = 2
alarm[0] = 120
}

if image_alpha <= 1 && Act = 3
{
image_alpha += 0.005
}

if image_alpha >= 1 && Act = 3
{
image_alpha = 1
Act = 4
alarm[3] = 1
}

if sprite_index = sprReallyDedSonic2
{
if image_index < 6
{
image_speed = 0.08
}
else if image_index > 6
{
image_index = 6
image_speed = 0
}}
#define Collision_HPGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 0
instance_create(304,332,ReallyDedSonic2)
instance_destroy()
