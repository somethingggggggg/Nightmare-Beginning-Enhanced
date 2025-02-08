#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scroll = 0
move = 0
fuck = 0
switch room
{
    case 11:
    myx = 4
    break;
    case 21:
    scroll = -0.5
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
    case 79:
    scroll = 1
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fuck += 1
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if scroll != 0 move += scroll

if room = 43
{
    with view_object[0]
    {
        scr_camera_follow()
    }
}
if room != 21 && room != 32 && room != 79 && room != 43
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
    if room = 32 or room = 79 or room = 43
    {
        background_x[1] = (view_xview[0]+move) / 1.5
        background_x[2] = (view_xview[0]+move) / 2
        background_x[3] = (view_xview[0]+move) / 2.5

        background_y[1] = view_yview[0] - view_yview[0]/16 - 32 + 238/16
        background_y[2] = view_yview[0] - view_yview[0]/8 - 32 + 238/8
        background_y[3] = view_yview[0] - view_yview[0]/4 - 32 + 238/4
    }
}
if room = 21
{
/*
    if instance_exists(Tails4) && view_object[0] = Tails4
    {
        view_xview[0] = Tails4.x - view_wview[0]/2
        view_yview[0] = Tails4.y - view_hview[0]/2
    }

    if instance_exists(Knuckles) && view_object[0] = Knuckles
    {
        view_xview[0] = Knuckles.x - view_wview[0]/2
        view_yview[0] = Knuckles.y - view_hview[0]/2
    }
*/
    with view_object[0]
    {
        scr_camera_follow()
    }

    background_y[0] = view_yview[0]
    background_y[1] = view_yview[0]

    background_x[0] = view_xview[0]+move
    background_x[1] = view_xview[0]+move
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room = 32 or room = 79 or room = 43
{
    draw_sprite_ext(sprDarkCircle,0,view_xview[view_current]+(1-global.performance)/2,view_yview[view_current]+(1-global.performance)/2,1,1,0,c_white,0.25)
    //draw_sprite_ext(sprTest2,fuck,view_xview[view_current],view_yview[view_current],1,1,0,c_white,0.25)
    if global.hardmode != 2 draw_sprite_stretched_ext(sprTest2,fuck,view_xview[view_current],view_yview[view_current],view_wview[view_current]+(1-global.performance)/2,view_hview[view_current]+(1-global.performance)/2,c_white,0.25)
    else draw_sprite_stretched_ext(sprTest2,fuck,view_xview[view_current],view_yview[view_current],view_wview[view_current]+(1-global.performance)/2,view_hview[view_current]+(1-global.performance)/2,c_red,0.25)
    draw_sprite_ext(sprTest,0,view_xview[view_current]+irandom_range(0,462),view_yview[view_current]-irandom_range(0,260)+260,sign(irandom_range(-1,0)+0.5),sign(irandom_range(-1,0)+0.5),0,c_white,0.05)// 0.05
}
