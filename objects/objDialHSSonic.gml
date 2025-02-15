#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

dialogue[0,0] = "There you are Tails!...Listen, I'm a bit tired... Don't let the murderer get away! Go now! I'll catch up with you in a second!"
dialogue[0,1] = "Вот ты где! Слушай, я немного устал, но убийца всё ещё рядом! Не дай ему уйти! Я догоню тебя через несколько секунд"
dialogue[0,2] = "Eccoti Tails!... Ascolta, sono un poco stanco. Non lasciar scappare l'assassino! Vai adesso! Ti raggiungero in un secondo!"

sprite[0] = sprSW_SonicNormal

dialogueLength = 1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.pause = 0
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
