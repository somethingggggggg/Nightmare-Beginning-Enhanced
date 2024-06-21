#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Strong = 100
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers2.sprite_index = sprKnucklesPunchBlack
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
if Pers2.sprite_index = sprKnucklesPunchBlack
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

if Strong <= 0
{
instance_create(x+30,y+96,FF_Piece)
instance_create(x+15,y+32,FF_Piece)
instance_create(x-10,y,FF_Piece)
instance_create(x,y-32,FF_Piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_AI2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if AI2.sprite_index = sprKnucklesTwisterBlack
{
instance_create(x+30,y+96,FF_Piece)
instance_create(x+15,y+32,FF_Piece)
instance_create(x-10,y,FF_Piece)
instance_create(x,y-32,FF_Piece)
instance_destroy()
sound_play(global.S_Broke)
}

//Broke down
if AI2.sprite_index = sprKnucklesPunchBlack
{
sound_play(global.S_Crack_Wall)
Strong -= 2
alarm[0] = 1
alarm[1] = 20
}
#define Collision_Pers2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers2.sprite_index = sprKnucklesTwisterBlack
{
instance_create(x+30,y+96,FF_Piece)
instance_create(x+15,y+32,FF_Piece)
instance_create(x-10,y,FF_Piece)
instance_create(x,y-32,FF_Piece)
instance_destroy()
sound_play(global.S_Broke)
}

//Broke down
if Pers2.sprite_index = sprKnucklesPunchBlack
{
sound_play(global.S_Crack_Wall)
Strong -= 2
alarm[0] = 1
alarm[1] = 20
}
#define Collision_EnergyShieldFF
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,EnergyShieldFF)
{
vspeed = 1
}
if !place_meeting(x,y,EnergyShieldFF)
{
vspeed = 0
}
#define Collision_SmachDash
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,SmachDash)
{
Strong -= 5
}
#define Collision_EggBomb
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Strong-=50
sound_play(global.S_Crack_Wall)
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Sonic.sprite_index = sprSonicJump && global.vel >=10
{
instance_create(x+30,y+96,FF_Piece)
instance_create(x+15,y+32,FF_Piece)
instance_create(x-10,y,FF_Piece)
instance_create(x,y-32,FF_Piece)
instance_destroy()
sound_play(global.S_Broke)
}
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Tails.sprite_index = sprTailsJump && global.vel >=10
{
instance_create(x+30,y+96,FF_Piece)
instance_create(x+15,y+32,FF_Piece)
instance_create(x-10,y,FF_Piece)
instance_create(x,y-32,FF_Piece)
instance_destroy()
sound_play(global.S_Broke)
}
