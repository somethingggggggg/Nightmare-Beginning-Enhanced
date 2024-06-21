#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale =-1
image_speed =0.2
hspeed =-6
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(view_xview[0],view_yview[0],SW_Control)
SW_Control.Page = 162
#define Collision_DF_Exe
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with DF_Exe
{
instance_destroy()
}
sound_stop(global.S_Bolt)
sprite_index = sprDF_MetalCatch
x=x-40
y=y-30
hspeed = 0
alarm[0] = 180
