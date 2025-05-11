#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if AllPers.image_xscale = -1
{
    hspeed = -8.25
    image_xscale = -1
}
else
{
    hspeed = 8.25
    image_xscale = 1
}
gravity=0.35
global.FireUsage += 1
if global.hardmode = 0 alarm[0]=100
else if global.hardmode = 1 alarm[0]=200
OutOfBound=0
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers)
{
    global.FireUsage -= 1
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index=sprFireOut
image_speed=0.45
alarm[0]=-1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if OutOfBound=0
{
    if x<0 or x>room_width
    {
        OutOfBound=1
        alarm[0]=1
    }
}


if place_meeting(bbox_left,y,Solid_Mask) or place_meeting(bbox_right,y,Solid_Mask)
{
    alarm[0]=1
}
#define Collision_Ex7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprFireball
{
  //instance_change(Exploy,Ex7);
    instance_create(other.x,other.y,ExployLight);
    sound_play(global.S_ShellHit)
    sound_play(global.S_BoxBroke)
    with other
    {
        instance_destroy()
    }
    sprite_index=sprFireOut
    image_speed=0.12
}
#define Collision_ExeAttack1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack1.sprite_index = sprFinalExePossible_to_beat1
{
    if sprite_index = sprFireball
    {
        with ExeAttack1
        {
            global.Hit += 1
            Mode = 3
            sound_play(global.S_Hit)
            sound_play(global.S_ShellHit)
        }
        sprite_index = sprFireOut
        image_speed = 0.12
    }
}
#define Collision_ExeAttack2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack2.sprite_index = sprFinalExLaugh
{
    if sprite_index=sprFireball
    {
        with ExeAttack2
        {
            global.Hit += 1
            vspeed = -5
            Act = 2
            sound_play(global.S_Hit)
            sound_play(global.S_ShellHit)
        }
        sprite_index=sprFireOut
        image_speed=0.12
    }
}
#define Collision_ExeAttack3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack3.sprite_index = sprFinalExePossible_to_beat1
{
    if sprite_index=sprFireball
    {
        with ExeAttack3
        {
            global.Hit += 1
            vspeed = -5
            Hit = true
            sound_play(global.S_Hit)
            sound_play(global.S_ShellHit)
        }
        sprite_index=sprFireOut
        image_speed=0.12
    }
}
#define Collision_ExeAttack4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ExeAttack4.sprite_index = sprFinalExePossible_to_beat1 && (!instance_exists(FinalMasterEmerald) && !instance_exists(HP_ExeWeak))
{
if sprite_index=sprFireball
{
with ExeAttack4
{
global.Hit+=1
Mode = 3
sound_play(global.S_Hit)
sound_play(global.S_ShellHit)
}

sprite_index=sprFireOut
image_speed=0.12
}
}
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = -4
if place_meeting(bbox_left,y,Solid_Mask) or place_meeting(bbox_right,y,Solid_Mask)
{
    alarm[0] = 1
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprFireOut
{
    instance_destroy()
}
