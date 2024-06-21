#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=Noice
arg1=Knuckles.x
arg2=Knuckles.y
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Sprite_mode = true
sound_stop(global.S_You_Can_t_Run)
if BL.K_Ring = false
{
instance_create(4848,288,TR1)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_You_Can_t_Run)
sound_play(global.S_Speak_3)
Tails4.maxSpeed = 6
global.vel = 0
instance_destroy()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=ScrapGround
invert=0
arg0=sprScrapGroundBlood2
arg1=0
arg2=1
*/
