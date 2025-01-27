#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(KPassed) or instance_exists(EPassed)
{
    sprite_index = sprHZ_EVENINGBloody;
}

if instance_exists(KPassed) && instance_exists(EPassed)
{
    sprite_index = sprHZ_NIGHTBloody;
}
mask_index = sprHZ_1Mask
