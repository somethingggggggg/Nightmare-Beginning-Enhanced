#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
alarm[0] = 60
view_object[1] = FinalCam
instance_create(x+250,y-10,HP_Exe)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 120
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000001000
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
instance_create(view_xview[1],view_yview[1],SW_Control)
SW_Control.Page = 118
SW_Control.jink = 1
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HP_Exe
{
sprite_index = sprSonicSpindash
sound_play(global.S_Spindash)
}
alarm[3] = 60
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HP_Exe
{
sprite_index = sprFinalExe_Jump
y=y-5
vel = -7
}
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with HPK
{
sound_play(global.S_Twister_Start)
sprite_index = sprKnucklesTwister
vel = -5
image_speed = 0.8
}
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = false
view_visible[1] = true
HPK.x = HPT.x+100
instance_create(480,352,HP_ExeWeak)
HPK.image_xscale = 1
HPE.x=HPE.x+50
instance_create(view_xview[1],view_yview[1],SW_Control)
SW_Control.Page = 124
SW_Control.jink = 9
with HP_Metal
{
instance_destroy()
}
