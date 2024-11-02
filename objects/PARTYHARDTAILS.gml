#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active = 0
alarm[0] = 60*10
myspeed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ScrapGround
{
    image_blend = make_color_hsv_standard(irandom_range(0,650),100,100)
}
active = 1
myspeed = irandom_range(1,5)
sound_play(global.S_Pingas)
alarm[0] = 30
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Tails4) && active = 1
{
    image_xscale = irandom_range(8,12)/10
    image_yscale = irandom_range(8,12)/10
    if x > Tails4.x image_xscale = abs(image_xscale)
    else image_xscale = -abs(image_xscale)
    move_towards_point(Tails4.x,Tails4.y,myspeed)
}
