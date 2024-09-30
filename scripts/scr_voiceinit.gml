voicecount = 0
globalvar voiceline;
global.voiceline[0] = 0
if ds_list_find_value(global.voicelist,global.voicedir) = ''
{
    exit;
}
ini_open('suka.ini')

    repeat(202)
    {
        if file_exists(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/"+string(voicecount)+".ogg")
        {
            global.voiceline[voicecount] = sound_add(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/"+string(voicecount)+".ogg",0,0)
            ini_write_real('fuck',voicecount,global.voiceline[voicecount])
        }
        voicecount += 1
    }
    //global.S_YCR_Knuck_1 = sound_add(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/YCR_Knuck_1.ogg",0,0)
    //global.S_YCR_Knuck_2 = sound_add(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/YCR_Knuck_2.ogg",0,0)
ini_close()
