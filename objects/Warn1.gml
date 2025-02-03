#define Collision_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Green_Hill)
sound_stop(global.S_Green_Hill_Evening)
sound_stop(global.S_Green_Hill_Night)

sound_loop(global.S_Green_Hill2)
Tails.Sprite_mode = true
Tails.maxSpeed = 2.5

if BL.T_Ring = false
{
    instance_create(304,400,TR1)
}
if global.TLive < 3
{
    instance_create(64,400,TailsLive)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Collision_Eggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Eggman.Bot = 1
Eggman.alarm[1] = 190
instance_destroy()
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=Hidden_Brain(47)
arg1=21
*/
#define Collision_HPE
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
HPE.vel = 0
HPK.sprite_index = sprKnucklesStandScary
HPK.image_xscale = 1
HPE.sprite_index = sprScrapEggman
HPE.image_xscale = 1
HPT.sprite_index = sprScaryTails
HPT.image_xscale = 1
instance_create(HPK.x,HPK.y,FinalCam)
instance_destroy()
#define Collision_SuicideSonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
SuicideSonic.Bot = 1
SuicideSonic.image_xscale = 1
SuicideSonic.alarm[0] = 120
instance_destroy()
