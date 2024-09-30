if ds_list_find_value(global.voicelist,global.voicedir) = ''
{
    exit;
}
if sound_exists(global.voiceline[Page-1]) sound_stop(global.voiceline[Page-1])
if sound_exists(global.voiceline[Page]) sound_play(global.voiceline[Page])
