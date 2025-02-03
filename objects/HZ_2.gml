#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(KPassed) or instance_exists(EPassed)
{
sprite_index = sprHZ_2_EveningNew
}

if instance_exists(KPassed) && instance_exists(EPassed)
{
sprite_index = sprHZ_2_Night
}

image_speed = 0.15
//eblanremennaia = x;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room = 8
{
    x = (view_xview[0] / 4);
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_tiled(sprite_index,image_index,x,y)
