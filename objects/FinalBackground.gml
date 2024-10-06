#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = view_xview[view_current]+100
y = view_yview[view_current]+140
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if view_current != 1 draw_sprite(sprite_index,image_index,view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2)
