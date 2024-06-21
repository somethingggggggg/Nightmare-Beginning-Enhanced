#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_stop(global.S_Mindfuckery)
sound_loop(global.S_Lab_S)
Bad_Touch = false

if global.Deadly_Mode = false
{
if (global.KLive != 3) && (!instance_exists(EPassed) && BL.Eggman_Plot = false)
{
sprite_index = sprSonicExSwithBad
image_speed = 0.15
}

if (global.KLive != 3) && (instance_exists(EPassed) && BL.Eggman_Plot = false)
{
sprite_index = sprSonicExSwithBad
image_speed = 0.15
}

if (global.KLive != 3) && (instance_exists(EPassed) && BL.Eggman_Plot = true)
{
sprite_index = sprSonicExSwithGood
image_speed = 0.15
}

if (global.KLive = 3) && (instance_exists(EPassed) && BL.Eggman_Plot = true)
{
sprite_index = sprSonicExSwithGreat
image_speed = 0.15
}}

if global.Deadly_Mode = true
{
sprite_index = sprSonicExSwithCrack
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_D_Mode_Active)
sound_play(global.S_Warp)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=Easter_Scene0(56)
arg1=21
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Bad_Touch = true
{
BlodyNoice.image_alpha += 0.003
}
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.Deadly_Mode = false
{
if Tails4.sprite_index = sprTailsJump && Bad_Touch = false
{
global.Deadly_Mode = true
Bad_Touch = true
with Warn1_5
{
instance_create(x,y,Solid)
instance_destroy()
}

instance_create(Tails4.x,Tails4.y,BlodyNoice)
sprite_index = sprSonicExSwithDestroy
sound_stop_all()
sound_loop(global.S_D_Mode_Active)
alarm[0] = 400
}}
