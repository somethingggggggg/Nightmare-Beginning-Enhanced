#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch room
{
    case 11:
    myx = 4
    break;
    case 26:
    myx = 2
    break;
    case 40:
    myx = 4
    break;
    case 42:
    myx = 4
    break;
    case 64:
    myx = 4
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != 21 && room != 32 && room != 79
{
    background_x[0] = view_xview[0] / myx
    background_y[0] = view_yview[0] / myx
    background_x[1] = view_xview[0] / 8
    background_y[1] = view_yview[0] / 8 + 2000
    if room = 42
    {
        background_x[1] = view_xview[0] / myx/2
        background_y[1] = view_yview[0] / myx/2
    }
}
else
{
    if room = 32 or room = 79
    {
        background_x[1] = view_xview[0] / 1.5
        background_x[2] = view_xview[0] / 2
        background_x[3] = view_xview[0] / 2.5

        background_y[1] = view_yview[0] - view_yview[0]/16 - 32 + 238/16
        background_y[2] = view_yview[0] - view_yview[0]/8 - 32 + 238/8
        background_y[3] = view_yview[0] - view_yview[0]/4 - 32 + 238/4
    }
}
if room = 21
{
    if instance_exists(Tails4) view_yview[0] = Tails4.y + view_hview[0]/2
    if instance_exists(Knuckles) view_yview[0] = Knuckles.y + view_hview[0]/2
    background_y[0] = view_yview[0]
    background_y[1] = view_yview[0]
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
