#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,EasterExploy)
if instance_exists(Tails3)
{
instance_create(x,y,HSE_GA)
}
sound_play(global.S_BoxBroke)
instance_destroy()
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (sound_isplaying(global.S_TMCS) = 0 && sound_isplaying(global.S_TYVM) = 0 && sound_isplaying(global.S_LTHDF) = 0 && sound_isplaying(global.S_IRLF) = 0 && sound_isplaying(global.S_WAC) = 0)
{
image_speed = 0
image_index = 0
}

if sound_isplaying(global.S_TMCS) = 1 or sound_isplaying(global.S_TYVM) = 1 or sound_isplaying(global.S_LTHDF) = 1 or sound_isplaying(global.S_IRLF) = 1 or sound_isplaying(global.S_WAC) = 1 or sound_isplaying(global.S_OHNO) = 1
{
alarm[1] = 300
image_speed = 0.2
}

if instance_exists(AllPers)
{
if collision_rectangle(x-100,y+5000,x-10000,y-5000,AllPers,1,0)
{
image_xscale = -1
}
if collision_rectangle(x+100,y+5000,x+10000,y-5000,AllPers,1,0)
{
image_xscale = 1
}}
#define Collision_TR1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_TYVM)
Act = 1
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act= 0
{
sound_play(global.S_OHNO)
Act = 2
alarm[0] = 40
}
#define Collision_TailsLive
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_TYVM)
Act = 1
#define Collision_KnucklesLive
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_TYVM)
Act = 1
#define Collision_EggmanLive
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_TYVM)
Act = 1
#define Collision_DM_Ring
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_TYVM)
Act = 1
#define Collision_DM_MasterEmerald
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_TYVM)
Act = 1
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act= 0
{
sound_play(global.S_TMCS)
Act = 1
}
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act= 0
{
sound_play(global.S_IRLF)
Act = 1
}
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act= 0
{
sound_play(global.S_WAC)
Act = 1
}
#define Collision_EnergyBlast
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act= 0
{
sound_play(global.S_OHNO)
Act = 2
alarm[0] = 40
}
