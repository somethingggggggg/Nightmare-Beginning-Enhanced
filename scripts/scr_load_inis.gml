ini_open("save.ini")
global.complete = ini_read_real('progress','bestend',0)
comppercent = ((ini_read_real('progress','bestend',0) + ini_read_real('progress','goodend',0) + ini_read_real('progress','worstend',0) + ini_read_real('progress','badend',0) + ini_read_real('progress','eggend',0) + ini_read_real('progress','tailsend',0))/6)*100
ini_close()
//temparr[0,0] = "fourbythree"
//temparr[0,1] = 0

ini_open("options.ini")
//variable_global_set(temparr[0,0],ini_read_real('options',temparr[0,0],temparr[0,1]))
global.fourbythree = ini_read_real('options','fourbythree',0)
global.subcnoise = ini_read_real('options','subcnoise',1)
//global.newcontent = ini_read_real('options','newcontent',1)
global.newcontent = 0
global.showfps = ini_read_real('options','showfps',0)
global.lang = ini_read_real('options','lang',0)
global.dialoguefont = ini_read_real('options','dialoguefont',testingfont)
global.progressbar = ini_read_real('options','progressbar',1)
global.cheats = ini_read_real('options','cheats',0)
global.voicedir = ini_read_real('options','voicedir',0)
global.DCRP_enabled = ini_read_real('options','DCRP_enabled',1)
WeWillNeedThisLater = global.DCRP_enabled
global.RG_final_boss = ini_read_real('options','RG_final_boss',1)
global.BL_filter = ini_read_real('options','BL_filter',0)
global.performance = ini_read_real('options','performance',0)
global.OrigCutscene = ini_read_real('options','origCutscene',1)
global.Eggmovement = ini_read_real('options','Eggmovement',0)
global.DropDashEnabled = ini_read_real('options','DropDashEnabled',0)
global.vidCutscn = ini_read_real('options','vidCutscn',0)
global.HSmusic = ini_read_real('options','HSmusic',0)
global.FlightCancelType = ini_read_real('options','FlightCancelType',0)
global.EggLvl = ini_read_real('options','EggLvl',0)
global.FFvoices =  ini_read_real('options','FFvoices',0)
ini_close()
