#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room = 8
{
    if instance_exists(KPassed) or instance_exists(EPassed)
    {
        sprite_index = sprHZ_EVENING
    }

    if instance_exists(KPassed) && instance_exists(EPassed)
    {
        sprite_index = sprHZ_NIGHT
    }
}
if room = 84 sprite_index = sprHZ_NIGHT

mask_index = sprHZ_1Mask
