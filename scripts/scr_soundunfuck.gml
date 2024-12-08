i = 0
repeat(ds_list_size(soundOneList))
{
    sound_resume(ds_list_find_value(soundOneList,i))
    i += 1
}
i = 0
repeat(ds_list_size(soundTwoList))
{
    sound_resume(ds_list_find_value(soundTwoList,i))
    i += 1
}
ds_list_destroy(soundTwoList)
ds_list_destroy(soundOneList)
