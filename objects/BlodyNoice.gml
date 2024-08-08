#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.8
image_alpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Knuckles)
{
if collision_circle(Knuckles.x,Knuckles.y,500,Ex14,0,0)
{
image_alpha += 0.005
}
else
{
image_alpha -= 0.01
}
x = view_xview[0]+100
y = view_yview[0]+100

if image_alpha > 0.45
{
image_alpha = 0.45
}
if image_alpha < 0
{
image_alpha = 0
}}

//Noice
if instance_exists(Knuckles)
{
    if image_alpha < 0.1
    {
        sound_kind_volume(1,0)
        //sound_volume(global.S_NoiceKS,0.5)
    }

    if image_alpha > 0.1 && image_alpha < 0.2
    {
        sound_kind_volume(1,0.5)
        //sound_volume(global.S_NoiceKS,0.7)
    }

    if image_alpha > 0.2 && image_alpha < 0.3
    {
        sound_kind_volume(1,0.7)
        //sound_volume(global.S_NoiceKS,0.8)
    }

    if image_alpha > 0.3 && image_alpha < 0.4
    {
        sound_kind_volume(1,0.8)
        //sound_volume(global.S_NoiceKS,0.9)
    }

    if image_alpha > 0.4
    {
        sound_kind_volume(1,1)
        //sound_volume(global.S_NoiceKS,1)
    }
}

if instance_exists(Tails4)
{
    x = view_xview[0]+100
    y = view_yview[0]+100
}
