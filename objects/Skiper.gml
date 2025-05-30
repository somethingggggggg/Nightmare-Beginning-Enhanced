#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
Alpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(ord("P"))
{
    switch room
    {
        case 39:
        room_goto(8)
        break;
        case 63:
        sound_stop(global.S_Broke)
        sound_stop(global.S_Twister_Start)
        room_goto(21)
        break;
        case 64:
        sound_stop(global.S_Alarm_2)
        sound_stop(global.S_BoxBroke)
        sound_stop(global.S_MetalBroke)
        sound_stop(global.S_Pig_Scream)
        room_goto(25)
        break;
    }
}
Alpha = clamp(Alpha-0.01,0,1)
if keyboard_check_pressed(vk_anykey) && !scr_input_get("enter","pressed") && !keyboard_check_pressed(ord("P"))
{
    Alpha = 1
}


/*if instance_exists(IntroTails)
{
Act = 1
}

if instance_exists(ScrapWallClean)
{
Act = 2
}

if instance_exists(EGGBot)
{
Act = 3
}

if !instance_exists(IntroTails) && !instance_exists(ScrapWallClean) && !instance_exists(EGGBot)
{
Act = 0
}

if Act = 1 && keyboard_check_pressed(ord("P"))
{
room_goto(8)
}

if Act = 2 && keyboard_check_pressed(ord("P"))
{
sound_stop(global.S_Broke)
sound_stop(global.S_Twister_Start)
room_goto(21)
}

if Act = 3 && keyboard_check_pressed(ord("P"))
{
sound_stop(global.S_Alarm_2)
sound_stop(global.S_BoxBroke)
sound_stop(global.S_MetalBroke)
sound_stop(global.S_Pig_Scream)
room_goto(25)
}
/*if room = room87 && scr_input_get("jump","pressed")
{
    room_goto(88)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

draw_set_font(global.dialoguefont)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
draw_text_color(view_xview[view_current]+view_wview[view_current],view_yview[view_current]+view_hview[view_current],"Press P To Skip",c_white,c_white,c_white,c_white,Alpha)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
