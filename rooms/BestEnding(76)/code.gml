ini_open("save.ini")
if global.BestEnd = 1 ini_write_real('progress','bestend',1)
else ini_write_real('progress','goodend',1)
ini_close()
