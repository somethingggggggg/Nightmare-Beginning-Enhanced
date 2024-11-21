#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
image_speed = 0.15
Act = 0
if PersonalChoiser.Eggman_Pers = true
{
view_object[0] = DF_Eggman
BL.AEC_E = true
if BL.Knuckles_Plot = true && BL.Tails_Plot = true
{
alarm[0] = 180
}
else
{
alarm[1] = 180
}}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true)
{
    instance_create(view_xview[0],view_yview[0],SW_Control)
    SW_Control.Page = 132
}

instance_create(0,0,GoI)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Tails.sprite_index = sprTailsBlack
DF_Knuckles.sprite_index = sprKnucklesStandBlack
DF_Eggman.sprite_index = sprEGGBotStand
background_hspeed[4] = 0
if BL.Knuckles_Plot = true
{
instance_create(DF_Knuckles.x,DF_Knuckles.y-150,DF_Exe)
}
if BL.Knuckles_Plot = false && BL.Tails_Plot = true
{
instance_create(DF_Tails.x,DF_Tails.y-150,DF_Exe)
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprEGGBotWalk
hspeed = -3
if PersonalChoiser.Eggman_Pers = true && BL.Knuckles_Plot = true
{
DF_Tails.sprite_index = sprTailsWalkBlack
DF_Tails.hspeed =-1
}
alarm[3] = 180
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = DF_Exe
sound_play(global.S_Smeh)
sprite_index = sprEGGBotStand
hspeed = 0
with DF_Knuckles
{
image_speed = 0
sprite_index = sprDFKnucklesDeath
}
with DF_Tails
{
instance_destroy()
}
with HvostBlack
{
instance_destroy()
}
if BL.Tails_Plot = true
{
instance_create(592,272,DFDeathTails)
}
DF_Exe.sprite_index = sprDFLaugh
DF_Exe.image_speed = 0.1
DF_Exe.image_xscale = 1
if PersonalChoiser.Eggman_Pers = true && BL.Knuckles_Plot = true
{
DF_Exe.x = DF_Exe.x+30
}
else
{
DF_Exe.x = DF_Exe.x-50
}
alarm[4] = 240
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.sprite_index = sprDF_Re_Turn
sound_play(global.S_Pingas)
alarm[5] = 160
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.image_xscale=-1
DF_Exe.sprite_index = sprDF_Spindash
DF_Exe.image_speed = 0.3
DF_Exe.hspeed = -7
sound_play(global.S_Spindash)
alarm[6] = 50
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.sprite_index = sprDF_ExeStand2
DF_Exe.hspeed = 0
alarm[7] = 60
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 160
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.image_speed = 0.1
DF_Exe.sprite_index = sprDGExeMoveSlow
DF_Exe.hspeed =-0.5
instance_create(DF_Exe.x+300,DF_Exe.y,ElectroBall)
#define Alarm_9
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(DF_Exe.x+300,DF_Exe.y,DF_Metal)
#define Collision_DF_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if PersonalChoiser.Eggman_Pers = false && Act = 0
{
Act = 1
sound_play(global.S_Spindash)
sprite_index = sprDFEggmanDeath
DF_Tails.hspeed = 0
DF_Knuckles.hspeed = 0
DF_Tails.sprite_index = sprTailsBlack
DF_Knuckles.sprite_index = sprKnucklesStandBlack
background_hspeed[4] = 0
if PersonalChoiser.Tails_Pers = true
{
DF_Tails.alarm[2] = 30
}
if PersonalChoiser.Knuckles_Pers = true
{
DF_Knuckles.alarm[2] = 30
}}
