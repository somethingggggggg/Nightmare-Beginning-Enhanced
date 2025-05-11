#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Type=0
Act=0
Hit=0
image_speed=0.14
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Hit=0
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//Use Room Object Creation Code to Switch Block Type

if Act=0
{
    if place_meeting(x,bbox_bottom+1/*0.5*/,AllPers)
    {
        instance_create(x,bbox_top,Coin2);
        sound_play(global.S_CoinCollect)
        sprite_index = sprHitBlock
    }
    Act=1
}

if place_meeting(x,bbox_bottom+1,AllPers)
{
    if Hit=0
    {
        sound_play(global.S_BlockBump)
        Hit=1
        alarm[0]=10
    }
}
