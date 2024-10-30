#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
hardsprites = 0
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = view_xview[view_current]+100
y = view_yview[view_current]+140
/*if global.hardmode = 1
{
    with all
    {
        hardmask = mask_index
        do hardsprites = irandom_range(0,808)
        until sprite_exists(hardsprites)
        sprite_index = hardsprites
        mask_index = hardmask
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_current != 1 draw_sprite_ext(sprite_index,image_index,view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
