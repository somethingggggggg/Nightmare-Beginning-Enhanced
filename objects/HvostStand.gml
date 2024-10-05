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
if instance_exists(Tails)
{
    if Tails.image_xscale = 1
    {
        image_xscale = 1
        move_snap(Tails.x-5,Tails.y+4)
    }

    if instance_exists(Tails) && Tails.image_xscale = -1
    {
        image_xscale = -1
        move_snap(Tails.x+5,Tails.y+4)
    }

    if Tails.sprite_index = sprScaryTailsWalk or Tails.sprite_index = sprTailsWalk or Tails.sprite_index = sprTailsRun
    {
        image_alpha = 0
    }

    if Tails.sprite_index != sprScaryTailsWalk && Tails.sprite_index != sprTailsWalk && Tails.sprite_index != sprTailsRun
    {
        image_alpha = 1
    }
    depth = Tails.depth+1
}

if instance_exists(HPT)
{
    if HPT.image_xscale = 1
    {
        image_xscale = 1
        move_snap(HPT.x-5,HPT.y+4)
    }

    if instance_exists(HPT) && HPT.image_xscale = -1
    {
        image_xscale = -1
        move_snap(HPT.x+5,HPT.y+4)
    }

    if HPT.sprite_index = sprScaryTailsRun or HPT.sprite_index = sprTailsWalk or HPT.sprite_index = sprTailsJump
    {
        image_alpha = 0
    }

    if HPT.sprite_index != sprScaryTailsWalk && HPT.sprite_index != sprTailsJump && HPT.sprite_index != sprScaryTailsRun
    {
        image_alpha = 1
    }
    depth = HPT.depth+1
}



if instance_exists(Tails2)
{
    if Tails2.image_xscale = 1
    {
        image_xscale = 1
        move_snap(Tails2.x-5,Tails2.y+4)
    }

    if instance_exists(Tails2) && Tails2.image_xscale = -1
    {
        image_xscale = -1
        move_snap(Tails2.x+5,Tails2.y+4)
    }

    if Tails2.sprite_index = sprScaryTailsWalk or Tails2.sprite_index = sprScaryTailsRun or Tails2.sprite_index = sprTailsRun
    {
        image_alpha = 0
    }

    if Tails2.sprite_index != sprScaryTailsWalk && Tails2.sprite_index != sprScaryTailsRun && Tails2.sprite_index != sprTailsRun
    {
        image_alpha = 1
    }
    depth = Tails2.depth+1
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
    if TailsStop2.sprite_index != sprScaryTails
    {
        image_alpha = 0
    }

    if TailsStop2.sprite_index = sprScaryTails
    {
        image_alpha = 1
    }
    depth = TailsStop2.depth+1
}

//code for an unused empty object because JizzKids is stupid
/*
if instance_exists(SadTails)
{
if SadTails.image_xscale = 1
{
image_xscale = 1
move_snap(SadTails.x-5,SadTails.y+4)
}

if SadTails.image_xscale = -1
{
image_xscale = -1
move_snap(SadTails.x+5,SadTails.y+4)
}
if SadTails.sprite_index != sprSadTails && SadTails.sprite_index != sprTailsUp && SadTails.sprite_index != sprTails
{
image_alpha = 0
}

if SadTails.sprite_index = sprSadTails or SadTails.sprite_index = sprTailsUp or SadTails.sprite_index = sprTails
{
image_alpha = 1
}
depth = SadTails.depth+1
}
*/


if instance_exists(Tails4)
{
    if Tails4.image_xscale = 1
    {
    image_xscale = 1
    move_snap(Tails4.x-5,Tails4.y+4)
    }

    if instance_exists(Tails4) && Tails4.image_xscale = -1
    {
    image_xscale = -1
    move_snap(Tails4.x+5,Tails4.y+4)
    }

    if Tails4.sprite_index = sprTailsWalk or Tails4.sprite_index = sprTailsRun or Tails4.sprite_index = sprTailsRacing or Tails4.sprite_index = sprTailsRacingTired
    {
        image_alpha = 0
    }

    if Tails4.sprite_index != sprTailsWalk && Tails4.sprite_index != sprTailsRun && Tails4.sprite_index != sprTailsRacing && Tails4.sprite_index != sprTailsRacingTired
    {
        image_alpha = 1
    }
    depth = Tails4.depth+1
    if Tails4.sprite_index = sprTailsJump
    {
        x = Tails4.x
        y = Tails4.y
        sprite_index = sprtt
        image_xscale = 1
        if global.vel != 0
        {
            image_angle = -radtodeg(arctan(Tails4.vspeed/global.vel))
        }
        else
        {
            if Tails4.vspeed > 0 image_angle = -90
            if Tails4.vspeed < 0 image_angle = 90
        }
        if global.vel < 0 image_angle = -radtodeg(arctan(Tails4.vspeed/global.vel))+180
    }
    else
    {
        sprite_index = sprHvostStand
        image_angle = 0
    }
}


if instance_exists(DM_Tails)
{
    if DM_Tails.image_xscale = 1
    {
        image_xscale = 1
        move_snap(DM_Tails.x-5,DM_Tails.y+4)
    }
    if DM_Tails.image_xscale = -1
    {
        image_xscale = -1
        move_snap(DM_Tails.x+5,DM_Tails.y+4)
    }
    if DM_Tails.sprite_index = sprTailsWalk or DM_Tails.sprite_index = sprTailsRun or DM_Tails.sprite_index = sprTailsRacing or DM_Tails.sprite_index = sprTailsRacingTired or DM_Tails.sprite_index = sprTailsSpindash
    {
        image_alpha = 0
    }

    if DM_Tails.sprite_index != sprTailsWalk && DM_Tails.sprite_index != sprTailsRun && DM_Tails.sprite_index != sprTailsRacing && DM_Tails.sprite_index != sprTailsRacingTired && DM_Tails.sprite_index != sprTailsSpindash
    {
        image_alpha = 1
    }
    depth = DM_Tails.depth+1
    if DM_Tails.sprite_index = sprTailsJump
    {
        x = DM_Tails.x
        y = DM_Tails.y
        sprite_index = sprtt
        image_xscale = 1
        if global.vel != 0
        {
            image_angle = -radtodeg(arctan(DM_Tails.vspeed/global.vel))
        }
        else
        {
            if DM_Tails.vspeed > 0 image_angle = -90
            if DM_Tails.vspeed < 0 image_angle = 90
        }
        if global.vel < 0 image_angle = -radtodeg(arctan(DM_Tails.vspeed/global.vel))+180
    }
    else
    {
        sprite_index = sprHvostStand
        image_angle = 0
    }
}

if instance_exists(AEC_Tails)
{
    if AEC_Tails.image_xscale = 1
    {
        image_xscale = 1
        move_snap(AEC_Tails.x-5,AEC_Tails.y+4)
    }
    if instance_exists(AEC_Tails) && AEC_Tails.image_xscale = -1
    {
        image_xscale = -1
        move_snap(AEC_Tails.x+5,AEC_Tails.y+4)
    }
    if AEC_Tails.sprite_index = sprTailsRun
    {
        image_alpha = 0
    }
    if AEC_Tails.sprite_index != sprTailsRun
    {
        image_alpha = 1
    }
    depth = AEC_Tails.depth+1
}
