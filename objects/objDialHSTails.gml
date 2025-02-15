#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

dialogue[0,0] = "Wait... Sonic never gets tired..."
dialogue[0,1] = "Тейлз: Стоп... Соник никогда не устаёт..."
dialogue[0,2] = "Tails: Aspetta... Sonic non e mai stanco..."

sprite[0] = sprSW_TailsWary

dialogueLength = 1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.pause = 0
with Warn3
{
    alarm[0] = 1
}
with Tails2
{
    alarm[0] = 540
    HS_1.sprite_index = sprHS_1_2
    background_index[0] = HAS_2_2
    HS_4.sprite_index = sprHS_4_2
    HS_5.sprite_index = sprHS_5_2
    HS_6.sprite_index = sprHS_6_2
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
