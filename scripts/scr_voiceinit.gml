if ds_list_find_value(global.voicelist,global.voicedir) != ''
{
    global.S_YCR_Knuck_1 = sound_add(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/YCR_Knuck_1.ogg",0,0)
    global.S_YCR_Knuck_2 = sound_add(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/YCR_Knuck_2.ogg",0,0)
}
