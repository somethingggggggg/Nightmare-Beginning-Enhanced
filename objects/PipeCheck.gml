#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act=0
Mode=0
Time=75
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Functions.Fade=1;Functions.DeathZone=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers){
if Act=0{
if place_meeting(x,y,AllPers){Act=1}else{Act=0;Time=100}}

if Act=1{
if place_meeting(x,y,AllPers) && global.vel=0 && AllPers.ducking=1{
Time-=1}else{Time=100}
if Time<0{Act=2;alarm[0]=30;sound_play(global.S_PowerDown)}}

if Act=2{
SolidLineVer.mask_index=sprSolidLineVer0;SolidLineHor.mask_index=sprSolidLineHor0
if instance_exists(Goomba){with Goomba{Hit=0;Move=0;hspeed=0;image_speed=0}}
if instance_exists(Koopa){with Koopa{Hit=0;Move=0;hspeed=0;image_speed=0}}
with AllPers{global.vel=0;Bot=0;Idie_mode=0;canMove=0;canSpriteChange=0;hspeed=0;gravity=0;vspeed=1.5;with HvostStand{vspeed=1.5}
with FinalSonic{sprite_index=sprSonic};with DM_Sonic{if Hyper_mode=0{sprite_index=sprSonic};if Hyper_mode>0{sprite_index=sprHyperSonic}};
with DM_Tails{sprite_index=sprTails};with DM_Knuckles{sprite_index=sprKnucklesStand};
with ScrapEggman{sprite_index=sprScrapEggman};with MS_Sonic{sprite_index=sprMS_Stand}}}}
