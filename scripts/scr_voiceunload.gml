var voicecount;
voicecount = 0
repeat(202)
{
    if sound_exists(global.voiceline[voicecount])
    {
        //sound_discard(global.voiceline[voicecount])
        sound_delete(global.voiceline[voicecount])
        global.voiceline[voicecount] = ''
    }
    voicecount += 1
}
