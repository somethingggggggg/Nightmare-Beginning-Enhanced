#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index = sprHS_Mask
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x+32,y,Tails2) && global.vel < 0 && global.hardmode = 1//date_get_day(date_current_datetime()) = 1 && date_get_month(date_current_datetime()) = 4
{
    x -= 1
}
#define Collision_Warn6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
