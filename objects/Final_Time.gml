#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.RG_final_boss sound_loop(global.S_Final_Boss_RG)
else sound_play(global.S_Final_Boss)
alarm[0] = 2520
alarm[1] = 4680
alarm[2] = 5280
alarm[3] = 8100
alarm[4] = 12600
alarm[5] = 15120
alarm[11] = 5

Pulse = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ExeAttack1.Boss = true
instance_create(4256,4640,UpGrounder)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ExeAttack2.Boss = true
with FinalSpring
{
instance_destroy()
}
HPK.Phase = 2
HPK.image_alpha = 0
HP_Exe.image_alpha = 0
with HPK
{
instance_create(x,y,Execkles)
}
view_object[1] = HPK
view_visible[2] = false
view_visible[1] = true
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = true
view_visible[1] = false
instance_create(FinalSonic.x+15,FinalSonic.y,Line_Crusher)
with UpGrounder
{
instance_create(x,y,UpGrounderBroke)
instance_destroy()
}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with FinalCam2
{
instance_destroy()
}
ExeAttack3.Boss = true
view_object[0] = FinalSonic
instance_create(13888,4972,Warn1_5)
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Line_Crusher
{
instance_destroy()
}
HPK.sprite_index = sprKnucklesStand
HPT.sprite_index = sprTails
FinalSonic.Bot = 6
instance_create(view_xview[0]+20,view_yview[0]+20,FinalMasterEmerald)
if global.Hit >= 15
{
ExeAttack4.Mode = 4
}
else
{
ExeAttack4.Mode = 5
}
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Burn)
global.GoodEnd = true
transition_kind = 21
transition_steps = 180
room_goto(76)
#define Alarm_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Pulse += 1
alarm[11] = 19
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Pulse
if Pulse > 11
{
Pulse = 0
}
