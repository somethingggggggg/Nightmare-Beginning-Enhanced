#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 3000
sound_stop(global.S_Game_Over)
sound_loop(global.S_Endgame)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Suicide = true
sound_stop(global.S_Endgame)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=BR_10(72)
arg1=21
*/
