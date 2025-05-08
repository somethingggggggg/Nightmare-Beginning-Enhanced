#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act=0
Mode=0
image_xscale=choose(1,-1)
image_speed=0.16
if global.hardmode=1{image_speed=0.21}
Hit=1
Anim=0
Grav = 1
Move=1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Enemy += 1
if instance_exists(ExetiorBonus){sound_play(global.S_BlowsUp);instance_create(x,y,BloodExplode)}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Hit=1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
if Grav=1
{
if (place_meeting(x,y+vspeed+1,Solid_Mask)) && vspeed>=0
{
ground=1
gravity=0
}
else
{
ground=0
gravity=0.25
}}

if Move=1
{
if vspeed = 0
{
if global.hardmode=0{hspeed = image_xscale*0.9}
if global.hardmode=1{hspeed = image_xscale*2;}

if y>320{
if !place_meeting(x+20,bbox_bottom+5,Solid_Mask) && image_xscale = 1
{
image_xscale=-1
}

if !place_meeting(x-20,bbox_bottom+5,Solid_Mask) && image_xscale = -1
{
image_xscale= 1
}}}}
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Hit=1{
if instance_exists(AllPers){
if GOD_LEVEL.JumpMode=1 or GOD_LEVEL.SpindashMode=1{
sound_play(global.S_Stomp);Hit=1.5;Move=0;hspeed=0;vspeed=0;Anim=1;sprite_index=sprGoomba2;image_index=0;alarm[1]=15

if AllPers.ground!=1{
if AllPers.vspeed > 0
  {
  if keyboard_check(ord("Z"))
  {
  if AllPers.vspeed > 3
  AllPers.vspeed = -AllPers.vspeed
  else
  AllPers.vspeed = -3
  }
  else
  AllPers.vspeed = -3
  }}}

if GOD_LEVEL.JumpMode=0 && GOD_LEVEL.SpindashMode=0{
if AllPers.ground=1 && AllPers.image_alpha=1{
playerGetHit()
}}}}
#define Collision_Solid_Mask
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,bbox_bottom+1,Solid_Mask) && vspeed >=0
{
move_contact_solid(270, 4);
vspeed = 0
}

if place_meeting(bbox_right+1,y,Solid_Mask) or place_meeting(bbox_left-1,y,Solid_Mask)
{
move_contact_solid(direction, 0.1)
image_xscale = -image_xscale
}
#define Collision_EnergyBlast
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act=0
{
Act=1
Hit=-1
Move=0
hspeed=0
alarm[0]=0
Anim=1
instance_create(x,y,ExployLight)
sound_play(global.S_ShellHit)
sound_play(global.S_BoxBroke)

instance_destroy()
}
#define Collision_Koopa
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Hit=1{
if Koopa.sprite_index=sprKoopa2 && Koopa.hspeed!=0{
sound_play(global.S_ShellHit);Hit=1.5;Move=0;hspeed=0;vspeed=0;Anim=1;sprite_index=sprGoomba2;image_index=0;alarm[1]=15}}
#define Collision_Fireball
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Act=0 && Fireball.sprite_index=sprFireball
{
Act=1
Hit=-1
Move=0
hspeed=0
alarm[0]=0
Anim=1
instance_create(x,y,ExployLight)
sound_play(global.S_ShellHit)
sound_play(global.S_BoxBroke)
with Fireball
{
alarm[0]=1
speed=0
}
instance_destroy()
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
