#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act = 0
{
Act = 1
sound_play(global.S_Make_This_Easy)
instance_create(5808,320,ExLastAttack)
ExLastAttack.hspeed = 8
}
