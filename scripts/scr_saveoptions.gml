ini_open("options.ini")
i = 0
o = 0
repeat(menulength[0]+menulength[1]+menulength[2]+menulength[3])
{
    if i >= menulength[o]
    {
        i = 0
        o += 1
    }
    if debug_mode = 1 show_debug_message(optionVarName[i,o])
    ini_write_real('options',optionVarName[i,o],variable_global_get(optionVarName[i,o]))
    i += 1
}
ini_close()
/*ini_write_real('options','subcnoise',global.subcnoise)
ini_write_real('options','showfps',global.showfps)
ini_write_real('options','language',global.lang)
ini_write_real('options','font',global.dialoguefont)
ini_write_real('options','progressbar',global.progressbar)
ini_write_real('options','newcontent',global.newcontent)
ini_write_real('options','cheats',global.cheats)
ini_write_real('options','fourbythree',global.fourbythree)
ini_write_real('options','voicedir',global.voicedir)
ini_write_real('options','DCRP_enabled',global.DCRP_enabled)
ini_write_real('options','RG_final_boss',global.RG_final_boss)
ini_write_real('options','BL_filter',global.BL_filter)
ini_write_real('options','performance',global.performance)
ini_write_real('options','OrigCutscene',global.performance)
