#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
image_alpha = 0
Act = 1
sound_play(global.S_Exe_OST)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ES_Sonic.sprite_index = sprSonicNegaSleep
ESHZ.sprite_index = sprNegaHZ
HZ_1.sprite_index = sprHZNega
HZ_3.sprite_index = sprHZTreesNega
HZ_4.sprite_index = sprHZFlowerNega
alarm[1] = 180
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y = y-2
sprite_index = sprHSE_FlyForw
hspeed = 1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=120
arg1=2
*/
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
Act = 5
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Exe_OST)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=Easter_Scene(54)
arg1=21
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 && Act = 1
{
image_alpha += 0.002
}

if image_alpha >= 1 && Act = 1
{
image_alpha = 1
Act = 2
}

if Act = 2 && image_alpha > 0
{
image_alpha -= 0.002
}

if image_alpha <= 0 && Act = 2
{
image_alpha = 0
y = y + 19
sprite_index = sprEx2
Act = 3
}

if Act = 3 && image_alpha < 0.5
{
image_alpha += 0.002
}

if image_alpha >= 0.5 && Act = 3
{
image_alpha = 0.5
alarm[0] = 180
Act = 4
}

if Act = 5 && image_alpha > 0
{
image_alpha -= 0.002
}

if image_alpha <= 0 && Act = 5
{
image_alpha = 0
alarm[3] = 180
Act = 6
}
