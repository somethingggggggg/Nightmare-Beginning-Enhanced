#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0.2
vspeed -= 4
hspeed = -2
image_speed = 0
sc = 0
a = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sc <= 0
{
    if vspeed < 2 image_index = 1
}
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 0
if sc > 3
    hspeed = 0
else
    hspeed = -0.5
if sc < 20 sprite_index = sprCreamD
else if sc < 70 sprite_index = sprCreamScary
else if sc < 100
{
    sprite_index = sprCreamScary1
    image_speed = 0.1
}
else
{
        image_speed = 0
        instance_change(Cream_531,Cream_529)
        sprite_index = sprCreamStand
        y = 340
}
if (sc > 26 && sc < 100)
{
    Cream_528.t += 0.5
    Cream_528.visible = true
    Timer.visible = false
}
else
{
    Cream_528.visible = false
    Timer.visible = true
}
if sc = 45 Cream_528.t = 0
if (sc > 45 && sc < 70)
{
    if a = 0
    {
        Cream_528.t = 0
        a = 1
    }
    Cream_528.text = "Я пережила одну битву... "
}
if sc = 70 Cream_528.t = 0
if (sc > 70)
{
    if a = 1
    {
        Cream_528.t = 0
        a = 0
    }
    if (Cream_528.p > 5)
        Cream_528.p = -5
    else
        Cream_528.p += 2
    Cream_528.text = "Я видела её смерть.. Я не хочу умирать!"
}
if sc = 130
{
    image_index = 1
    //sound_play(S_sound_take)
}
if sc = 145 image_index = 2
if sc = 155
{
    //audio_stop_sound(S_You_Can_t_Run)
    //audio_play_sound(S_You_Can_t_Run_Secret, 1, true)
    Cream_530.visible = true
}
sc += 0.1
