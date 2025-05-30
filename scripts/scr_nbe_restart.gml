/*
with BL instance_destroy()
with PersonalChoiser instance_destroy()
with Exe_Attack_Mode instance_destroy()
with Skiper instance_destroy()
with saver instance_destroy()
with speedor instance_destroy()
*/

//memory leaks woo - hoo

with all
{
    if object_index != Sounder instance_destroy()
}
ds_map_destroy(global.joy_button_binds)
ds_map_destroy(global.key_button_binds)
font_delete(global.SPRSONFONT)
font_delete(global.SMALLSONFONT)
font_delete(global.DESKFONT)
scr_voiceunload()
ds_list_destroy(global.mod_list)
ds_list_destroy(global.voicelist)
sound_stop_all()
global.S_MainMenu=sound_add(working_directory+"/Sound/PTCUshop.mp3",0,0)
if global.DCRP_enabled = 1
{
    discord_free_dll()
    discord_free_app()
}
room_goto(0)
sound_loop(global.S_MainMenu)
