#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
image_alpha = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 2
if instance_exists(TailsFatality)
{
    if TailsFatality.Dissappear = true
    {
        image_alpha -= 0.01
    }

    if TailsFatality.Appear = true
    {
        image_alpha += 0.01
    }

    if image_alpha <= 0
    {
        image_alpha = 0
    }
}
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=321
invert=0
arg0=Lol! You found the hidden part of the level! Well done!
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch room
{
    case 40: scr_giveach("secret_40") break;
    case 42: scr_giveach("secret_42") break;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
