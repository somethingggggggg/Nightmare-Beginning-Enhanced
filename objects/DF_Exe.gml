#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ground = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = DF_Exe
sprite_index = sprDF_Spindash
sound_play(global.S_Spindash)
alarm[1] = 30
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(global.S_Rolling)
hspeed = 8
DF_Tails.vspeed =-6
DF_Tails.sprite_index = sprTailsJump
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y-150,DF_Spike)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if image_alpha = 1
{
if place_meeting(x, y+vspeed+1, FF_Ground) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom,FF_Ground)
{
    move_contact_solid(270, 4);
    vspeed = 0;
}

if PersonalChoiser.Tails_Pers = true
{
    if place_meeting(bbox_right,y,FF_Ground) && hspeed >0
    {
        hspeed = 0
        sound_play(global.S_Wall_Fall)
        x = x-10
        image_xscale =-1
        sprite_index = sprDF_ExeDuck
        DF_Tails.image_xscale = 1
        alarm[2] = 40
    }
}
