if global.cheats = 1 exit;
ini_open("save.ini")
ini_write_real('Achivements','ach_'+string(argument0),1)
ini_close()
