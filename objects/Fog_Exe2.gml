#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_line(x,y,x-120,y,Sonic,1,0) &&  Act = 0
{
Act = 1
sprite_index = sprDF_Spindash
sound_play(global.S_Spindash)
hspeed = 6
}
