#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 200
sound_stop_all()
sound_play(global.S_Smeh)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if room_exists(global.lvl_sel_room) room_goto(global.lvl_sel_room)
else show_message("what the actual fuck:"+string(global.lvl_sel_room))
