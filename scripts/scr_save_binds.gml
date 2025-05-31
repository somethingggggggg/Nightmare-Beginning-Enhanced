var suka;
suka = ds_map_find_first(global.joy_button_binds)
ini_open("binds.ini")
repeat(ds_map_size(global.joy_button_binds))
{
    ini_write_real("joy",suka,ds_map_find_value(global.joy_button_binds,suka))
    suka = ds_map_find_next(global.joy_button_binds,suka)
}
ini_close()
