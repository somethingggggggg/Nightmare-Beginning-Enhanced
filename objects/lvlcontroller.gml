#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch room
{
    case 26:
    myx = 2
    break;
    case 40:
    myx = 4
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_x[0] = view_xview[0] / myx
background_y[0] = view_yview[0] / myx

background_x[1] = view_xview[0] / 8
background_y[1] = view_yview[0] / 8 + 2000
