voicecount = 0
globalvar voiceline;
global.voiceline[0] = 0
if ds_list_find_value(global.voicelist,global.voicedir) = ''
{
    repeat(202)
    {
        global.voiceline[voicecount] = ''
        voicecount += 1
    }
    exit;
}
repeat(202)
{
    global.voiceline[voicecount] = ''
    if file_exists(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/"+string(voicecount)+".ogg")
    {
        global.voiceline[voicecount] = sound_add(working_directory+"/Sound/"+ds_list_find_value(global.voicelist,global.voicedir)+"/"+string(voicecount)+".ogg",0,0)
    }
    voicecount += 1
}
