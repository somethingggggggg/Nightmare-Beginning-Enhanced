#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_xscale =-1
instance_create(19456,4192,Warn1_5)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=119
applies_to=self
invert=0
arg0=MetalWay
arg1=2
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HPK
{
sprite_index = sprKnucklesUp
image_index = 1
image_speed = 0
}
HPT.sprite_index = sprTailsUp
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HP_Exe
{
x =384
y =288
image_alpha = 0.7
vel = 0
sprite_index = sprSonicWaitHyper
image_speed = 0.15
Bot = 1
}
instance_create(384,176,PowerRay)
with HPK
{
image_speed = 0.3
image_xscale = -1
sprite_index = sprKnucklesBlowsUp
}
sound_play(global.S_Ray)
with HP_ExeWeak
{
x =x+50
sprite_index = sprHP_Metal2
image_speed = 0.15
}
alarm[2] = 120
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with FinalMasterEmerald
{
instance_destroy()
}
if global.Hit >= 15
{
view_visible[1] = false
view_visible[0] = true
instance_create(FinalSonic.x,FinalSonic.y,FinalCam4)
ExeAttack4.Mode = 6
alarm[3] = 80
}
else
{
view_visible[1] = false
view_visible[0] = true
instance_create(FinalSonic.x,FinalSonic.y,FinalCam4)
with ExeAttack4
{
if collision_rectangle(x,y+100,x+500,y-100,FinalSonic,1,0)
{
image_xscale = 1
}
if collision_rectangle(x,y+100,x-500,y-100,FinalSonic,1,0)
{
image_xscale = -1
}
sprite_index = sprEx4_4
}
alarm[4] = 100
FinalSonic.sprite_index = sprSonicBalances
image_speed = 0.2
}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
FinalSonic.Bot = 2
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ExeAttack4
{
instance_change(FinalExeBitch,ExeAttack4)
}
FinalSonic.Bot = 2
#define Other_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 60
