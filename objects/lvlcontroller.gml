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
    case 32:

    break;
    case 40:
    myx = 4
    break;
    case 42:
    myx = 4
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != 21 && room != 32
{
    background_x[0] = view_xview[0] / myx
    background_y[0] = view_yview[0] / myx
    background_x[1] = view_xview[0] / 8
    background_y[1] = view_yview[0] / 8 + 2000
}
else
{
    if room = 32
    {
        background_x[1] = view_xview[0] / 1.5
        background_x[2] = view_xview[0] / 2
        background_x[3] = view_xview[0] / 2.5

        background_y[1] = view_yview[0] - 32
        background_y[2] = view_yview[0] - 32
        background_y[3] = view_yview[0] - 32
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
