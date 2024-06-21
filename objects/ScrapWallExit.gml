#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Strong = 200
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Knuckles.sprite_index = sprKnucklesPunch
{
Strong -= 2
alarm[0] = 1
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Knuckles.sprite_index = sprKnucklesPunch
{
sound_play(global.S_Crack_Wall)
alarm[1] = 20
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Strong < 60 && Strong > 30
{
image_index = 1
}

if Strong < 30 && Strong > 0
{
image_index = 2
}

if Strong = 0
{
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Knuckles.sprite_index = sprKnucklesTwister
{
Knuckles.Act = 0
Knuckles.sprite_index = sprKnucklesPunch
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
Knuckles.alarm[2] = 50
instance_destroy()
sound_play(global.S_Crack_Wall)
}

//Broke down
if Knuckles.sprite_index = sprKnucklesPunchScary or Knuckles.sprite_index = sprKnucklesPunch
{
sound_play(global.S_Crack_Wall)
Strong -= 2
alarm[0] = 1
alarm[1] = 20
}
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Sonic.sprite_index = sprSonicJump or DM_Sonic.sprite_index = sprHyperJump && (global.vel >=9 or global.vel <=-9)
{
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Tails.sprite_index = sprTailsJump && (global.vel >=10 or global.vel <=-10)
{
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Knuckles.sprite_index = sprKnucklesJump && (global.vel >=9 or global.vel <=-9)
{
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_DM_Metal
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (DM_Metal.sprite_index = sprMS_Jump && (global.vel >=8 or global.vel <=-8)) or DM_Metal.sprite_index = sprMS_Run
{
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_EnergyBlast
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x+30,y+96,Wall_piece)
instance_create(x+15,y+32,Wall_piece)
instance_create(x-10,y,Wall_piece)
instance_create(x,y-32,Wall_piece)
instance_destroy()
sound_play(global.S_Broke)
