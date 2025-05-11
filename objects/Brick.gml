#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//We built this city
Act=0
image_speed=0.14
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers){
if Act = 0 && place_meeting(x,bbox_bottom+0.5,AllPers) && global.EasterEggState >= 1
{
instance_create(x,y,ExployLight)
sound_play(global.S_BlockBreak)
instance_destroy()
}

else if place_meeting(x,bbox_bottom+0.5,AllPers) && global.EasterEggState = 0
sound_play(global.S_BlockBump)}
