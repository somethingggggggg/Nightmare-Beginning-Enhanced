#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
image_speed = 0
ground = true;
Act = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if image_alpha = 1
{
if place_meeting(x, y+vspeed+1, ScrapGround) or place_meeting(x, y+vspeed+1, ScrapElevator) && vspeed >= 0
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
} }

if global.EggMeat = true
{
image_alpha = 1
}
else
{
image_alpha = 0
}
#define Collision_ScrapGround
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha = 1
{
if global.TLive >= 2 && Act = 0
{
Act = 2
sound_play(global.S_ContinueLive)
global.TLive -= 1
}

if global.TLive < 2 && Act = 0
{
Act = 1
show_message("You don't have enough lives to revive your arch nemesis...But do you really want to revive him?")
}}
#define Collision_ScrapElevator
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
