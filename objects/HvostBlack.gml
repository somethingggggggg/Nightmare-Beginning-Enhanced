#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_number(HvostBlack) > 1 instance_destroy()
image_speed = 0.15
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Pers1)
{
    image_xscale = Pers1.image_xscale
    x = Pers1.x-(5*image_xscale)
    y = Pers1.y+4
    //move_snap(Pers1.x-5,Pers1.y+4)

    if Pers1.sprite_index = sprTailsWalk or Pers1.sprite_index = sprTailsJump
    {
        image_alpha = 0
    }
    else
    {
        image_alpha = 1
    }
    depth = Pers1.depth+1
}


if instance_exists(AI1)
{
    if AI1.image_xscale = 1
    {
        image_xscale = 1
        move_snap(AI1.x-5,AI1.y+4)
    }

    if instance_exists(AI1) && AI1.image_xscale = -1
    {
        image_xscale = -1
        move_snap(AI1.x+5,AI1.y+4)
    }

    if AI1.sprite_index = sprTailsWalk or AI1.sprite_index = sprTailsJump
    {
        image_alpha = 0
    }

    if AI1.sprite_index != sprTailsWalk && AI1.sprite_index != sprTailsJump
    {
        image_alpha = 1
    }
    depth = AI1.depth+1
}

if instance_exists(TailsStop2)
{
if TailsStop2.image_xscale = 1
{
image_xscale = 1
move_snap(TailsStop2.x-5,TailsStop2.y+4)
}

if TailsStop2.image_xscale = -1
{
image_xscale = -1
move_snap(TailsStop2.x+5,TailsStop2.y+4)
}
depth = TailsStop2.depth+1
}

if instance_exists(DF_Tails)
{
    if DF_Tails.image_xscale = 1
    {
        image_xscale = 1
        move_snap(DF_Tails.x-5,DF_Tails.y+4)
    }

    if instance_exists(DF_Tails) && DF_Tails.image_xscale = -1
    {
        image_xscale = -1
        move_snap(DF_Tails.x+5,DF_Tails.y+4)
    }

    if DF_Tails.sprite_index = sprTailsWalk or DF_Tails.sprite_index = sprTailsJump or DF_Tails.sprite_index = sprTailsSpindash
    {
        image_alpha = 0
    }
    else
    {
        image_alpha = 1
    }
    depth = DF_Tails.depth+1
}

if instance_exists(CutTails)
{
if CutTails.image_xscale = 1
{
image_xscale = 1
move_snap(CutTails.x-5,CutTails.y+4)
}

if instance_exists(CutTails) && CutTails.image_xscale = -1
{
image_xscale = -1
move_snap(CutTails.x+5,CutTails.y+4)
}

if CutTails.sprite_index = sprTailsWalk or CutTails.sprite_index = sprTailsJump
{
image_alpha = 0
}

if CutTails.sprite_index != sprTailsWalk && CutTails.sprite_index != sprTailsJump
{
image_alpha = 1
}
depth = CutTails.depth+1
}


//Deleted
if !instance_exists(Pers1) && !instance_exists(AI1) && !instance_exists(Pers1) && !instance_exists(TailsStop2) && !instance_exists(DF_Tails) && !instance_exists(Pers1) && !instance_exists(CutTails)
{
instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(psGrayscale())
shader_pixel_uniform_f("fade",0.5)
draw_self()
shader_reset()
