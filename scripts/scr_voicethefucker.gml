if ds_list_find_value(global.voicelist,global.voicedir) = ''
{
    exit;
}
if global.voiceline[Page-1] != '' sound_stop(global.voiceline[Page-1])
if global.voiceline[Page] != '' sound_play(global.voiceline[Page])
