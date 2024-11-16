#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if collision_line(x,y,x,y+150,Pers2,0,1)
{
    instance_change(Ex12_2,Ex12)
    speed = 0
}

if collision_line(x,y,x,y+150,AI2,0,1)
{
    instance_change(Ex12_2_Ai,Ex12)
    speed = 0
}
#define Collision_Pers1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers1.sprite_index = sprTailsJump && instance_exists(SmachDash)
{
    sound_play(global.S_ExeBeat)
    instance_destroy()
}
#define Collision_EnergyShieldFF
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
