#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
Act = 0
Punch = false
Act2 = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Act
if !instance_exists(SonicExAssasin)
{
if Act = 1 && !place_meeting(x,bbox_bottom,ScrapGround)
{
vspeed = 1.5
}

if Act = 0
{
vspeed = 0
}

if Punch = true
{
vspeed = 1.5
with ScrapEggman
{
Bot = 1
}

}

if Punch = true && Act2 = 0
{
Act2 = 1
with ScrapEggman
{
alarm[0] = 540
}
with DM_Metal
{
alarm[1] = 540
}
}}
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom,ScrapGround) && sprite_index != sprScrapElevatorShort
{
Act = 0
ScrapEggman.Bot = 0
sound_stop(global.S_Lift)
}
#define Collision_ScrapEggman
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ScrapEggman
{
move_contact_solid(270, 4);
vspeed = 0
}

if sprite_index = sprScrapElevatorShort && Act != 10
{
ScrapEggman.alarm[1] = 0
if !instance_exists(SonicExAssasin)
{
sound_loop(global.S_Lift)
}
Act = 10
Punch = true
}

if sprite_index = sprScrapElevator && Act != 10
{
Act = 1
}
#define Collision_DM_Metal
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ScrapEggman
{
move_contact_solid(270, 4);
vspeed = 0
}

if sprite_index = sprScrapElevatorShort && Act != 10
{
if !instance_exists(SonicExAssasin)
{
sound_loop(global.S_Lift)
}
Act = 10
Punch = true
}

if sprite_index = sprScrapElevator && Act != 10
{
Act = 1
}
