#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
EGG_Shower.image_xscale =-1
EGG_Shower.sprite_index = sprMSonicAttack
EGG_Shower.hspeed = -5
view_object[0] = EGG_Shower
#define 224
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Egg_Exe.sprite_index = sprFinalExe_Jump
Egg_Exe.vspeed = -5
view_object[0] = Egg_Exe
#define 254
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_MetalBroke)
with EGG_Shower
{
    sprite_index = sprMSonicBroke
    image_speed = 0.5
    vspeed = 3
}
