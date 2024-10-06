#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
instance_destroy()
}}
if image_alpha <= 0
{
image_alpha = 0
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(TailsFatality)
{
if instance_exists(Tails3) && Tails3.image_xscale = 1
{
image_xscale = 1
move_snap(Tails3.x-5,Tails3.y+4)
}

if instance_exists(Tails3) && Tails3.image_xscale = -1
{
image_xscale = -1
move_snap(Tails3.x+5,Tails3.y+4)
}

if Tails3.sprite_index = sprHorrorTailsWalk or Tails3.sprite_index = sprHorrorTailsRun or Tails3.sprite_index = sprTailsRacing or Tails3.sprite_index = sprTailsFlyTired
{
image_alpha = 0
}

if Tails3.Hide = true && (Tails3.sprite_index != sprHorrorTailsWalk && Tails3.sprite_index != sprHorrorTailsRun && Tails3.sprite_index != sprTailsRacing && Tails3.sprite_index != sprTailsFlyTired)
{
image_alpha = 0.4
}

if Tails3.Hide = false && (Tails3.sprite_index != sprHorrorTailsWalk && Tails3.sprite_index != sprHorrorTailsRun && Tails3.sprite_index != sprTailsRacing && Tails3.sprite_index != sprTailsFlyTired)
{
image_alpha = 1
}

depth = Tails3.depth+1
}
if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
instance_destroy()
}}
if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if image_alpha <= 0
{
    image_alpha = 0
}

if Tails3.sprite_index = sprTailsJump
{
    x = Tails3.x
    y = Tails3.y
    sprite_index = sprtt
    image_xscale = 1
    if global.vel != 0
    {
        image_angle = -radtodeg(arctan(Tails3.vspeed/global.vel))
    }
    else
    {
        if Tails3.vspeed > 0 image_angle = -90
        if Tails3.vspeed < 0 image_angle = 90
    }
    if global.vel < 0 image_angle = -radtodeg(arctan(Tails3.vspeed/global.vel))+180
}
else
{
    sprite_index = sprHvostStand2
    image_angle = 0
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprtt draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,$b4b4b4,image_alpha)
else draw_self()

/*draw_set_color(c_white)
draw_set_font(global.dialoguefont)
if global.vel != 0
{
draw_text(x,y+60,-radtodeg(arctan(Tails3.vspeed/global.vel)))
}
draw_text(x,y+40,image_angle)
*/
