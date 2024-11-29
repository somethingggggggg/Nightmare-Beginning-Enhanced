#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TimeOver = 180
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,Tails)
{
    if Tails.sprite_index = 153
    {
        TimeOver = TimeOver - 1
    }
    else
    {
        TimeOver = 180
    }
}
#define Collision_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.up = 1
{
    TimeOver -= 1
}


if TimeOver <= 0
{
    sound_stop_all()
    room_goto(15)
}
#define Collision_Warn2_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Collision_DM_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Sonic.sprite_index = sprSonicUp
{
TimeOver -= 1
}
else
{

}

if TimeOver <= 0
{
sound_stop_all()
room_goto(15)
}
#define Collision_DM_Tails
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Tails.sprite_index = sprTailsUp
{
TimeOver -= 1
}
else
{

}

if TimeOver <= 0
{
sound_stop_all()
room_goto(15)
}
#define Collision_DM_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if DM_Knuckles.sprite_index = sprKnucklesUp
{
TimeOver -= 1
}
else
{

}

if TimeOver <= 0
{
sound_stop_all()
room_goto(15)
}
