/*
with BL instance_destroy()
with PersonalChoiser instance_destroy()
with Exe_Attack_Mode instance_destroy()
with Skiper instance_destroy()
with saver instance_destroy()
with speedor instance_destroy()
*/
with all
{
    if object_index != Sounder instance_destroy()
}
font_delete(global.SPRSONFONT)
font_delete(global.SMALLSONFONT)
font_delete(global.DESKFONT)
if instance_exists(menusasa)
{
    ds_list_destroy(menusasa.fuckarr)
}
scr_voiceunload()
ds_list_destroy(global.voicelist)
sound_stop_all()
if global.DCRP_enabled = 1
{
    discord_free_dll()
    discord_free_app()
}
room_goto(0)
