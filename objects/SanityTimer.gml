#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Time = 60
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Time -= 0.01
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=Knuckles
*/
if SanityTimer.Time < 0
{
instance_change(KnucklesStop2,Knuckles)
instance_deactivate_object(SanityTimer)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprSanity_Count,0, view_xview[0]+160, view_yview[0]+30,)
draw_text_color(view_xview[0]+210,view_yview[0]+20, Time, $5050cf,$5050cf,$5050cf,$5050cf,1)
