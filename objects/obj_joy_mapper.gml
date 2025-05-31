#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
temp = ds_map_create()
suka = ds_map_find_first(global.joy_button_binds)
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ds_map_empty(global.joy_button_binds)
ds_map_copy(global.joy_button_binds,temp)
ds_map_destroy(temp)
scr_save_binds()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if !is_string(suka) instance_destroy()
for(i = 0;i < 33;i += 1)
{
    if joystick_check_button_pressed(0,i) break;
}
if i != 33
{
    ds_map_add(temp,suka,i)
    suka = ds_map_find_next(global.joy_button_binds,suka)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_color(c_white)
draw_set_halign(fa_middle)
draw_set_font(global.SMALLSONFONT)
if is_string(suka) draw_text(view_xview[view_current]+(view_wview[view_current]/2),view_yview[view_current]+(view_hview[view_current]/2),"press button for#"+suka)
