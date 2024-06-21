#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
hspeed = -4
#define Collision_DF_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DF_Exe.sprite_index = sprDF_ExeShocked
DF_Exe.image_speed = 0.3
sound_play(global.S_Bolt)
DF_Eggman.alarm[9] = 180
DF_Exe.hspeed =0
instance_destroy()
