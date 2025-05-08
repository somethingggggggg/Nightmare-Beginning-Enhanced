#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
Act = 11
if instance_exists(ExetiorBonus){sprite_index = sprExetiorTable;with ExetiorBonusPass{image_xscale=1;sprite_index=sprExetiorP_Idle;image_speed=0.08}}
if instance_exists(FinalSonic) or instance_exists(DM_Sonic){sprite_index = sprSonicTable}
if instance_exists(DM_Tails){sprite_index = sprTailsTable2}
if instance_exists(DM_Knuckles){sprite_index = sprKnucklesTable2}
if instance_exists(DM_Metal){sprite_index = sprMetalTable}

if !instance_exists(ExetiorBonus){
sound_stop(global.S_Signpost);sound_play(global.S_LevelClear)
alarm[2]=260}
if instance_exists(ExetiorBonus){
sound_stop(global.S_Signpost);sound_play(global.S_ExeFinish)
alarm[1]=360}
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control);SW_Control.Page=230
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(ExetiorBonus){
if global.Enemy<17{alarm[3]=1}
if global.Enemy>=17{alarm[4]=1}}
if !instance_exists(ExetiorBonus){alarm[3]=1}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
GOD_LEVEL.State=0
GOD_LEVEL.FireUse=0
sound_stop_all()
transition_kind=21
room_goto(38)
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ExetiorBonusPass{Act=1;sprite_index=sprExetiorP_Win;vspeed=-6;image_speed=0;image_index=0;hspeed=1.5}
sound_play(global.S_ItsMe2)
alarm[5]=600
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
transition_kind=21
room_goto(38)
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
instance_create(0,0,AntiDebug)
with BonusCreditsNote{instance_destroy()}
Act = 1
if !instance_exists(ExetiorBonus){
with AllPers{
visible=0;x=6480;y=386;Bot=1;global.vel=0;vspeed=0;hspeed=0}
instance_create(6464,396,CharBonusPass)}
else{
with AllPers{
visible=0;x=6480;y=386;Bot=1;global.vel=0;vspeed=0;hspeed=0}
instance_create(6480,396,ExetiorBonusPass)}

Functions.Track=3
sound_stop(global.S_World1_1)
view_visible[0]=false
view_visible[1]=true
sound_play(global.S_Signpost)
view_object[0]=EndLevel
alarm[0] = 160
if instance_exists(ExetiorBonus){sprite_index = sprBonusSignSpinEx}
if instance_exists(FinalSonic) or instance_exists(DM_Sonic){sprite_index = sprBonusSignSpinSonic}
if instance_exists(DM_Tails){sprite_index = sprBonusSignSpinTails}
if instance_exists(DM_Knuckles){sprite_index = sprBonusSignSpinKnuckles}
if instance_exists(DM_Metal){sprite_index = sprBonusSignSpinMetal}
image_speed = 0.5
}
