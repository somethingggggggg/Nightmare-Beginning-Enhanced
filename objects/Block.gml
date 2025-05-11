#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

Act=0
Hit=0
image_speed=0.14
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Hit=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers){
if Act=0
{
if place_meeting(x,bbox_bottom+0.5,AllPers)
{
sound_play(global.S_BlockUse)
sprite_index=sprHitBlock
if global.EasterEggState < 1
{
instance_create(x,y-36,Mushroom)
}
else if global.EasterEggState >= 1
{
instance_create(x,y-34,FireFlower)
}
Act=1
}}

if place_meeting(x,bbox_bottom+0.5,AllPers)
{
if Hit=0{
sound_play(global.S_BlockBump)
Hit=1
alarm[0]=10}}}
