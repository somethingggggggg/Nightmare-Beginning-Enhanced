#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.8
sound_play(global.S_SmashDash)
image_xscale = Pers1.image_xscale
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Pers1)
{
move_snap(Pers1.x,Pers1.y)
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
tailscustom.SmashDash = false
instance_destroy()
