#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.1;
alarm[0] = 256;
canGrab = false;
alarm[1] = 64;
fade = false;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
canGrab = false;
fade = true;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
canGrab = true;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0.1;

if place_meeting(x, y+vspeed+1, Solid_Mask)
  vspeed *= -0.75;

  if place_meeting(x, y+vspeed+1, Solid_Mask)
  vspeed *= -0.75;

if fade == true
{
  image_alpha -= 0.1;
if image_alpha <= 0
 instance_destroy();
}
#define Collision_Tails4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canGrab == true
{
  global.rings += 1;
  instance_change(RingOut,Ring);
  sound_play(global.S_WellRing)
}
#define Collision_FinalSonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canGrab == true
{
  global.rings += 1;
  instance_change(RingOut,Ring);
  sound_play(global.S_WellRing)
}
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canGrab == true
{
  global.rings += 1;
  instance_change(RingOut,Ring);
  sound_play(global.S_WellRing)
}
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canGrab == true
{
  global.rings += 1;
  instance_change(RingOut,Ring);
  sound_play(global.S_WellRing)
}
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canGrab == true
{
  global.rings += 1;
  instance_change(RingOut,Ring);
  sound_play(global.S_WellRing)
}
#define Collision_DM_Metal
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if canGrab == true
{
  global.rings += 1;
  instance_change(RingOut,Ring);
  sound_play(global.S_WellRing)
}
