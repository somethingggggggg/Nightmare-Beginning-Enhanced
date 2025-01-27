#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i = 0
while i <= 2
{
    prev_x[i] = background_x[i]
    prev_y[i] = background_y[i]
    i += 1
}
prev_xview = view_xview[0]
prev_yview = view_yview[0]
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i = 0
while i <= 2
{
    background_x[i] = prev_x[i] + (view_xview[0] - prev_xview)/4
    background_y[i] = prev_x[i] + (view_yview[0] - prev_xview)/4
    i += 1
}
