#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
sc = 0
gravity = 0
alarm[0] = 300
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 1
caster_play(global.S_sound_take,2,1)
alarm[1] = 150
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 2
alarm[2] = 100
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Cream_530.visible = true
sound_stop(global.S_You_Can_t_Run)
caster_loop(global.S_YCRS,2,1)
alarm[3] = 300
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ini_open("save.ini")
ini_write_real('Achivements','creamach',1)
ini_close()
game_end()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if sc = 30
{
    image_index = 1
    //sound_play(S_sound_take)
}
if sc = 45 image_index = 2
if sc = 55
{
    //audio_stop_sound(S_You_Can_t_Run)
    //audio_play_sound(S_You_Can_t_Run_Secret, 1, true)
    Cream_530.visible = true
}
sc += 0.1
