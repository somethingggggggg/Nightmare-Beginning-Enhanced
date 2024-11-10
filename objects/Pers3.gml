#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
acc = 0.066875;
vel = 0;
maxSpeed = 3;
ground = true;
ducking = false;
rolling = false;
canMove = true;
spindash = false;
spindashTimer = 0;
up = false;
drawAngle = 0;
canHit = true;
canSpriteChange = true;
canJump = true
Speaker_Tails = false
Speaker_Knuckles = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Speaker_Tails = false && Speaker_Knuckles = false
Speaker_Knuckles = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_object[0] = Pers3
//Movement
if !instance_exists(EnergyShieldFF)
{
if keyboard_check(vk_left) && !place_meeting(x+(abs(hspeed)*-1)-1, y, FF_Wall) && !place_meeting(x+(abs(hspeed)*-1)-1, y, Solid) && (canMove == true or (rolling == true && hspeed > 0))
{
  hspeed = -maxSpeed
  image_xscale = -1;
}
if keyboard_check_released(vk_left)
{
hspeed = 0
}
if keyboard_check(vk_right) && !place_meeting(x+abs(hspeed)+1, y, FF_Wall) && !place_meeting(x+abs(hspeed)+1, y, Solid) && (canMove == true or (rolling == true && hspeed < 0))
{
  hspeed = maxSpeed
  image_xscale = 1;
}

if keyboard_check_released(vk_right)
{
    hspeed = 0
}
}

//Gravity
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

//Handle sprites
if canSpriteChange == true
{

if ground == true && ducking == false && rolling == false && spindash == false
{
   if hspeed = 0
   sprite_index = sprEGGBotStand;
 else if hspeed > -8 && hspeed < 8
   sprite_index = sprEGGBotWalk;
else
   sprite_index = sprTailsRun;

    image_speed = abs(hspeed/20);
}
else if sprite_index == sprKnucklesJumpBlack
{
   sprite_index = sprKnucklesJumpBlack;

    image_speed = (hspeed/2)
}
}
mask_index = sprEggmanMask

//Life
if TAB.life <= 0
{
BL.FF_E = false
BL.End_2 = true
sound_stop(global.S_DF_S)
room_goto(33)
}

//Shield
if keyboard_check(ord("S")) && TAB.Energy > 0
{
if !instance_exists(EnergyShieldFF)
{
instance_create(x,y,EnergyShieldFF)
sound_loop(global.S_EGG_Shield)
}
hspeed = 0
TAB.Energy -= 1
}

if !keyboard_check(ord("S")) or TAB.Energy <= 0
{
sound_stop(global.S_EGG_Shield)
if TAB.Energy < 101
{
TAB.Energy += 0.2
}
with EnergyShieldFF
{
instance_destroy()
}
}

if !keyboard_check(ord("S"))
{
sound_stop(global.S_EGG_Shield)
}

//Change
if instance_exists(AI1) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
sound_stop(global.S_EGG_Shield)
with EnergyShieldFF
{
instance_destroy()
}
TAB.Turn = false
TAB.alarm[0] = 10
sound_play(global.S_TAB)
instance_change(AI3,Pers3)
with AI1
{
instance_change(Pers1,AI1)
}
view_object[0] = Pers1
}

if !instance_exists(AI1) && keyboard_check_pressed(vk_space) && TAB.Turn = true
{
if instance_exists(AI2)
{
sound_stop(global.S_EGG_Shield)
with EnergyShieldFF
{
instance_destroy()
}
TAB.Turn = false
TAB.alarm[0] = 10
sound_play(global.S_TAB)
instance_change(AI3,Pers3)
with AI2
{
instance_change(Pers2,AI2)
}
view_object[0] = Pers2
}}
global.complpercent = 100 - ((x / 8300) * 100)
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
hspeed = 0
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_Ex11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(EnergyShieldFF)
{
TAB.life -=1
}
#define Collision_FF_Wall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawAngle = 0
hspeed = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(psGrayscale())
shader_pixel_uniform_f("fade",0.5)
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
shader_reset()

draw_set_halign(fa_center)
draw_text_color(view_xview[0]+(view_wview[0]/2),view_yview[0]+80,TAB.Energy,$000000,$000000,$000000,$000000, 1)
draw_sprite(sprEggmanS,0,view_xview[0]+(view_wview[0]/2),view_yview[0]+60)
draw_sprite(sprChangePlayer,0,view_xview[0]+40,view_yview[0]+225)

if TAB.EggBombTime = false
{
draw_sprite(sprEggBombNote,0,view_xview[0]+20,view_yview[0]+30)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=526
invert=0
arg0=FONT
arg1=0
*/
#define KeyPress_81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale = 1 && TAB.EggBombTime = false
{
TAB.EggBombTime = true
instance_create(x,y,EggBomb)
EggBomb.hspeed = 1.5
}

if image_xscale = -1 && TAB.EggBombTime = false
{
TAB.EggBombTime = true
instance_create(x,y,EggBomb)
EggBomb.hspeed = -1.5
}
