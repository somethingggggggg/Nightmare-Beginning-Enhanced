soundOneList = ds_list_create()
soundTwoList = ds_list_create()
ds_list_copy(soundOneList,sound_kind_list(0))
ds_list_copy(soundTwoList,sound_kind_list(1))
i = 0
repeat(ds_list_size(soundOneList))
{
    sound_pause(ds_list_find_value(soundOneList,i))
    i += 1
}
i = 0
repeat(ds_list_size(soundTwoList))
{
    sound_pause(ds_list_find_value(soundTwoList,i))
    i += 1
}
sound_resume(global.S_PAUSEMENU)
