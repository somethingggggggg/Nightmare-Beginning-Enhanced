#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.3
Act = 1
hspeed = 15
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprFalseSonic
image_xscale =-1
hspeed = -10
Tails.maxSpeed = 8;
instance_create(4624,208,Warn2_2)
global.hackpage = 0
instance_create(0,0,obj_dialogue_pause)
/* if global.lang = 0
{
show_message("Sonic: Why did you come here Tails? I told you to stay near the Tornado! Something happened, I don't know what. But someone killed all the animals in the area! We must find the killer! Come on Tails! Don't fall behind!")
}
if global.lang = 1
{
show_message("Соник: Что ты здесь делаешь Тейлз!? Я же сказал тебе держатся рядом с 'Торнадо'! Что-то случилось... Кто-то убил всех животных в округе. Мы должны найти убийцу! Живо Тейлз, не отставай!")
}
if global.lang = 2
{
show_message("Sonic: Perche sei venuto qua Tails? Ti ho detto di stare vicino Tornado! Qualcosa e accaduto, non so cosa. Ma qualcuno ha ucciso tutti gli animali nell'area! Dobbiamo trovare l'assassino! Forza Tails! Non rimanere dietro!")
}
#define Collision_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
Act = 2
alarm[0] = 5
sprite_index = sprSonicTurnOut
}
