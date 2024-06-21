#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
#define Collision_Ex4_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
sound_play(global.S_Broke)
view_object[0] = KnucklesStop
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Knuckles.Punch = true
{
sound_play(global.S_Uncrack_Wall)
}
#define Collision_EnergyBlast
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
