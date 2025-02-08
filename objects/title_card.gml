#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
timer = -1
anim = 0
myspr = 0
image_speed = 0.25
cardArr[8] = sprHill_Note
cardArr[11] = sprHandS0_Note
cardArr[40] = sprHandS2_Note
cardArr[21] = sprYCR
cardArr[26] = spr3dot_Note
cardArr[32] = sprFF_Note
cardArr[66] = sprDM_Note
cardArr[70] = sprSuicideHill_Note
cardArr[79] = sprDF_Note

myspr = cardArr[room]
switch room
{
    case 8:
        image_speed = 0
        image_index = instance_exists(KPassed) + instance_exists(EPassed)
    break;
    case 11:
        if !instance_exists(HS_3) myspr = sprHandS0_Note
        else myspr = sprHandS_Note
    break;
    case 26:
        image_xscale = 2
        image_yscale = 2
        myspr = spr3dot_Note
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.hardmode = 2
{
    image_xscale = irandom_range(5,15)/10
    image_yscale = irandom_range(5,15)/10
}
if timer > 300 instance_destroy()
timer += 1
/*if anim > 3
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
    draw_sprite_ext(myspr,image_index,view_xview[view_current]+(view_wview[view_current]/2) +(timer-100)*16,view_yview[view_current]+(view_hview[view_current]/2),image_xscale,image_yscale,0,c_white,1)
}
else
{
    draw_sprite_ext(myspr,image_index,view_xview[view_current]+(view_wview[view_current]/2),view_yview[view_current]+(view_hview[view_current]/2),image_xscale,image_yscale,0,c_white,1)
}
