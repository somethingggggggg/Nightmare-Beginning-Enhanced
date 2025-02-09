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
font_delete(global.SPRSONFONT)
font_delete(global.SMALLSONFONT)
font_delete(global.DESKFONT)
scr_voiceunload()
if instance_exists(menusasa)
{
    ds_list_destroy(menusasa.fuckarr)
}
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
