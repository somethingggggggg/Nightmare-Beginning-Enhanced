#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
timer = -1
anim = 0
myspr = 0
switch room
{
    case 8:
        myspr = sprHill_Note
    break;
    case 11:
        if !instance_exists(HS_3) myspr = sprHandS0_Note
        else myspr = sprHandS_Note
    break;
    case 40:
        myspr = sprHandS2_Note
    break;
    case 21:
        myspr = sprYCR
    break;
    case 26:
        image_xscale = 2
        image_yscale = 2
        myspr = spr3dot_Note
    break;
    case 32:
        myspr = sprFF_Note
    break;
    case 66:
        myspr = sprDM_Note
    break;
    case 70:
        myspr = sprSuicideHill_Note
    break;
    case 79:
        myspr = sprDF_Note
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.hardmode = 1
{
    image_xscale = irandom_range(5,15)/10
    image_yscale = irandom_range(5,15)/10
}
if timer > 300 instance_destroy()
timer += 1
if anim > 3
anim = 0
else anim += 0.25
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer > 100
{
    draw_sprite_ext(myspr,anim,view_xview[0]+(view_wview[0]/2) +(timer-100)*16,view_yview[0]+(view_hview[0]/2),image_xscale,image_yscale,0,c_white,1)
}
else
{
    draw_sprite_ext(myspr,anim,view_xview[0]+(view_wview[0]/2),view_yview[0]+(view_hview[0]/2),image_xscale,image_yscale,0,c_white,1)
}
