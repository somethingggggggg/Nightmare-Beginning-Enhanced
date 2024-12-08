#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonic)
{
    alarm[0] = 180
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -7
#define Collision_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Green_Hill2)
sound_loop(global.S_Hill)
Tails.maxSpeed = 2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Creeps
arg1=8768
arg2=224
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_CutKnuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=CutKnuckles
invert=0
arg0=000010000
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=CutKnuckles
invert=0
arg0=sprKnucklesStandBlack
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CutKnuckles.sprite_index = sprKnucklesStand
CutKnuckles.hspeed = 0
CutTails.image_xscale = -1
CutTails.sprite_index = sprTails
instance_destroy()
#define Collision_CutEggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=CutEggman
invert=0
arg0=000010000
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=CutEggman
invert=0
arg0=sprEGGBotStand
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(CutKnuckles)
{
    CutTails.sprite_index = sprTails
}

CutTails.image_xscale = 1
CutEggman.hspeed = 0
CutEggman.image_speed = 0.15
instance_destroy()
