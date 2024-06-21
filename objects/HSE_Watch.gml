#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.1
Tails3.depth = -11
HvostStand2.depth = -12
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_snap(view_xview[0]+144,view_yview[0]+128)
instance_deactivate_object(WinRing)
instance_deactivate_object(DeathRing)

if Tails3.image_alpha = 1
{
instance_create(100,100,HSE_Walker)
instance_destroy()
}
