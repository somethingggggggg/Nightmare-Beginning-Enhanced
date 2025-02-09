#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Noice
{
    instance_destroy()
}
AllPers.Bot=3
sound_stop_all();
sound_loop(global.S_Mindfuckery)
instance_create(AllPers.x-300,AllPers.y,ExeYCRChaser)
instance_destroy()
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Ex4_2
arg1=Knuckles.x-25
arg2=Knuckles.y-10
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Ex4_2
*/
image_xscale = 1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Knuckles
*/
sound_stop(global.S_You_Can_t_Run)
sound_play(global.S_Scream_1)
instance_change(KnucklesStop,Knuckles)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.object_index = DM_Sonic or other.object_index = DM_Tails or other.object_index = DM_Metal or other.object_index = DM_Knuckles or other.object_index = ExetiorBonus
{
    if Act=0
    {
        Act = 1
        sound_stop_all()
        instance_create(AllPers.x,AllPers.y,Noice);
        sound_loop(global.S_Noice);
        alarm[0] = 120;
        AllPers.Bot = 1;
        global.vel = 0
    }
}
