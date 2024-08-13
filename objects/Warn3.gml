#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=9056
arg2=400
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=3828
arg2=384
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=2828
arg2=144
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=2828
arg2=384
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=3824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=4824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=5824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=6824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=7824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=8824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=9824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=HS_3
arg1=10824
arg2=256
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Tails2
*/
sound_stop(global.S_Forest)
sound_play(global.S_Exployed)
maxSpeed = 0
global.pause = 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = true
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_Tails2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.pause = 0
{
Tails2.Bot_Mode = false
global.vel = 0
global.hackpage = 4
instance_create(0,0,obj_dialogue_pause)
/*if global.lang = 0
{
show_message("Tails: Wait... Sonic never gets tired...")
}
if global.lang = 1
{
show_message("Тейлз: Стоп... Соник никогда не устаёт...")
}
if global.lang = 2
{
show_message("Tails: Aspetta... Sonic non e mai stanco...")
}*/
}
if global.pause = 1 && !instance_exists(obj_dialogue_pause)
{
alarm[0] = 1
}
#define Collision_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
