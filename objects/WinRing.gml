#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,Tails4)
instance_create(x,y,HvostStand)
instance_destroy()
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,RiseSonic0)
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Tails3)
{
    if distance_to_object(HSE_GA) > 300
    {
        image_alpha -= 0.1
    }
    else
    {
        image_alpha += 0.1
    }
}

if image_alpha > 1
{
    image_alpha = 1
}

if image_alpha < 0
{
    image_alpha = 0
}
