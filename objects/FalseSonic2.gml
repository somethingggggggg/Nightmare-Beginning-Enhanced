#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 1
#define Collision_Tails2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 1
{
Act = 2
Tails2.Bot_Mode = true
if global.lang = 0
{
show_message("There you are Tails!...Listen, I'm a bit tired... Don't let the murderer get away! Go now! I'll catch up with you in a second!")
}
if global.lang = 1
{
show_message("Соник: Вот ты где! Слушай, я немного устал, но убийца всё ещё рядом! Не дай ему уйти! Я догоню тебя через несколько секунд")
}
if global.lang = 2
{
show_message("Sonic: Eccoti Tails!... Ascolta, sono un poco stanco. Non lasciar scappare l'assassino! Vai adesso! Ti raggiungero in un secondo!")
}

}
