#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
sweattimer = 10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index != sprEGGBotStand exit;

if sweattimer = 0
{
    instance_create(x+irandom_range(-10,10),bbox_top,obj_FinalSweatParticle)
    sweattimer = 10
}
else
{
    sweattimer -= 1
}
