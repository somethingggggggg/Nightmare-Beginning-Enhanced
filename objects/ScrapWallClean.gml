#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Knuckles.sprite_index = sprKnucklesTwister
{
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
}

if Knuckles.sprite_index != sprKnucklesTwister
{
Knuckles.Act = 0
Knuckles.sprite_index = sprKnucklesPunch
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
Knuckles.alarm[2] = 50
instance_destroy()
sound_play(global.S_Crack_Wall)
}
