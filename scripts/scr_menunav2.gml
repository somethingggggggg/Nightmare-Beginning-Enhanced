//the options menu
anim += 1
mycolor = $ffffff
if anim > 192
{
    anim = 0
}
if keyboard_check(vk_up)
{
    if keyboard_check_pressed(vk_up)
    {
        global.option -= 1
        sound_play(global.S_TAB)
    }
    autoscroll -= 1
}
else
{
    if !keyboard_check(vk_down)
    {
        autoscroll = 0
    }
}
if keyboard_check(vk_down)
{
    if keyboard_check_pressed(vk_down)
    {
        global.option += 1
        sound_play(global.S_TAB)
    }
    autoscroll += 1
}
if abs(autoscroll) > 30
{
    if autoscroll/4 = floor(autoscroll/4) global.option += sign(autoscroll)
}
if global.option < 0 global.option = menulength-1
if global.option > menulength-1 global.option = 0
if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        scr_saveoptions()
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 0
    }
}
if keyboard_check_pressed(vk_left)
{
    if optionblocked[global.option] != 1
    {
        if global.option != 0
        {
            sound_play(global.S_WellRing)
            if global.option != 3 && global.option != 8 && global.option != 9 && global.option != 1
            {
                if variable_global_get(optionVarName[global.option]) = 1 variable_global_set(optionVarName[global.option],0)
                else variable_global_set(optionVarName[global.option],1)
            }
            else
            {
                if global.option = 1
                {
                    variable_global_set(optionVarName[1],variable_global_get(optionVarName[1])-1)
                    if variable_global_get(optionVarName[1]) > 2 variable_global_set(optionVarName[1],0)
                    if variable_global_get(optionVarName[1]) < 0 variable_global_set(optionVarName[1],2)
                    scr_lang_menu_init(variable_global_get(optionVarName[1]))
                }
                if global.option = 3
                {
                    if variable_global_get(optionVarName[3]) = WORD_Font variable_global_set(optionVarName[3],testingfont)
                    else variable_global_set(optionVarName[3],WORD_Font)
                }
                if global.option = 8
                {
                    variable_global_set(optionVarName[8],variable_global_get(optionVarName[8])-1)
                    if variable_global_get(optionVarName[8]) > 2 variable_global_set(optionVarName[8],0)
                    if variable_global_get(optionVarName[8]) < 0 variable_global_set(optionVarName[8],2)
                }
                if global.option = 9
                {
                    variable_global_set(optionVarName[9],variable_global_get(optionVarName[9])-1)
                    if variable_global_get(optionVarName[9]) > ds_list_size(global.voicelist)-1 variable_global_set(optionVarName[9],0)
                    if variable_global_get(optionVarName[9]) < 0 variable_global_set(optionVarName[9],ds_list_size(global.voicelist)-1)
                }
            }
        }
    }
    else
    {
        if global.option = 2
        {
            text = "COMPLETE THE GAME#ON THE BEST#ENDING FIRST"
            instance_create(0,0,obj_textpopup)
        }
        sound_stop(global.S_Locked)
        sound_play(global.S_Locked)
    }
}

//global.S_Locked
if keyboard_check_pressed(vk_right)
{
    if optionblocked[global.option] != 1
    {
        if global.option != 0
        {
            sound_play(global.S_WellRing)
            if global.option != 3 && global.option != 8 && global.option != 9 && global.option != 1
            {
                if variable_global_get(optionVarName[global.option]) = 1 variable_global_set(optionVarName[global.option],0)
                else variable_global_set(optionVarName[global.option],1)
            }
            else
            {
                if global.option = 1
                {
                    variable_global_set(optionVarName[1],variable_global_get(optionVarName[1])+1)
                    if variable_global_get(optionVarName[1]) > 2 variable_global_set(optionVarName[1],0)
                    if variable_global_get(optionVarName[1]) < 0 variable_global_set(optionVarName[1],2)
                    scr_lang_menu_init(variable_global_get(optionVarName[1]))
                }
                if global.option = 3
                {
                    if variable_global_get(optionVarName[3]) = WORD_Font variable_global_set(optionVarName[3],testingfont)
                    else variable_global_set(optionVarName[3],WORD_Font)
                }
                if global.option = 8
                {
                    variable_global_set(optionVarName[8],variable_global_get(optionVarName[8])+1)
                    if variable_global_get(optionVarName[8]) > 2 variable_global_set(optionVarName[8],0)
                    if variable_global_get(optionVarName[8]) < 0 variable_global_set(optionVarName[8],2)
                }
                if global.option = 9
                {
                    variable_global_set(optionVarName[9],variable_global_get(optionVarName[9])+1)
                    if variable_global_get(optionVarName[9]) > ds_list_size(global.voicelist)-1 variable_global_set(optionVarName[9],0)
                    if variable_global_get(optionVarName[9]) < 0 variable_global_set(optionVarName[9],ds_list_size(global.voicelist)-1)
                }
            }
        }
    }
    else
    {
        if global.option = 2
        {
            text = "COMPLETE THE GAME#ON THE BEST#ENDING FIRST"
            instance_create(0,0,obj_textpopup)
        }
        sound_stop(global.S_Locked)
        sound_play(global.S_Locked)
    }
}
    texture_set_interpolation(global.BL_filter)

if global.option > 3 scroll = -lerp((global.option-3) * 10,abs(scroll),0.5)
else scroll = - abs(scroll)/2
