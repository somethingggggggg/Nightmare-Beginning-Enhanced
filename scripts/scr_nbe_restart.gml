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
    if object_index != Sounder && object_index != gm82core_object instance_destroy()
}
ds_map_destroy(global.joy_button_binds)
ds_map_destroy(global.key_button_binds)
i = 0
repeat(ds_list_size(global.mod_objects))
{
    object_delete(ds_list_find_value(global.mod_objects,i))
    i += 1
}
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
