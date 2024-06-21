#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Pers1)
{
if Pers1.image_xscale = 1
{
image_xscale = 1
move_snap(Pers1.x-5,Pers1.y+4)
}

if instance_exists(Pers1) && Pers1.image_xscale = -1
{
image_xscale = -1
move_snap(Pers1.x+5,Pers1.y+4)
}

if Pers1.sprite_index = sprTailsWalkBlack or Pers1.sprite_index = sprTailsJumpBlack
{
image_alpha = 0
}

if Pers1.sprite_index != sprTailsWalkBlack && Pers1.sprite_index != sprTailsJumpBlack
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

if AI1.sprite_index = sprTailsWalkBlack or AI1.sprite_index = sprTailsJumpBlack
{
image_alpha = 0
}

if AI1.sprite_index != sprTailsWalkBlack && AI1.sprite_index != sprTailsJumpBlack
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

if DF_Tails.sprite_index = sprTailsWalkBlack or DF_Tails.sprite_index = sprTailsJumpBlack
{
image_alpha = 0
}

if DF_Tails.sprite_index != sprTailsWalkBlack && DF_Tails.sprite_index != sprTailsJumpBlack
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

if CutTails.sprite_index = sprTailsWalkBlack or CutTails.sprite_index = sprTailsJumpBlack
{
image_alpha = 0
}

if CutTails.sprite_index != sprTailsWalkBlack && CutTails.sprite_index != sprTailsJumpBlack
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
