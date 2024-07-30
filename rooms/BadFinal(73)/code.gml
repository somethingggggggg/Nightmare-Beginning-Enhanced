sound_stop_all()
HZ_2.sprite_index = sprHZ_2_Evening
sound_play(global.S_BadEnding)
ini_open("save.ini")
ini_write_real('progress','badend',1)
ini_close()
