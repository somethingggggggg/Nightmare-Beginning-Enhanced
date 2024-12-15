//the options menu
HorizScroll = lerp(HorizScroll,0,0.5)
ButtonPressedLeftOrRight = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
//anim += 1
time += 1
mycolor = $ffffff
//if anim > 192
//{
//    anim = 0
//}
if keyboard_check(vk_up) && !keyboard_check(vk_down)
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
if keyboard_check(vk_down) && !keyboard_check(vk_up)
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
if global.option < 0 global.option = menulength[global.suboption]+1
if global.option > menulength[global.suboption]+1 global.option = 0

if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        scr_saveoptions()
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 0
    }
    if global.suboption = 3
    {
        if global.option = 2
        {
            if file_exists(working_directory+"/options.ini") file_delete(working_directory+"/options.ini")
            scr_load_inis()
            sound_play(global.S_Ring)
        }
        if global.option = 3
        {
            if file_exists(working_directory+"/save.ini") file_delete(working_directory+"/save.ini")
            global.complete = 0
            comppercent = 0
            optionblocked[0,1] = 1
            sound_play(global.S_Ring)
        }
    }
}

if ButtonPressedLeftOrRight != 0 && global.option != 0
{
    if global.option = 1
    {
        global.suboption += ButtonPressedLeftOrRight
        HorizScroll = ButtonPressedLeftOrRight * 16
        sound_play(global.S_BoxBroke)
        if global.suboption < 0 global.suboption = 3-argument0
        if global.suboption > 3-argument0 global.suboption = 0
    }
    else if global.suboption != 3
    {
        if optionblocked[global.option-2,global.suboption] != 1
        {
            sound_play(global.S_WellRing)
            if global.option != 0 && !(global.option = 2 && global.suboption = 0) && !(global.option = 1+2 && global.suboption = 2) && !(global.option = 0+2 && global.suboption = 2) && !(global.option = 1+2 && global.suboption = 0)
            {
                if variable_global_get(optionVarName[global.option-2,global.suboption]) = 1 variable_global_set(optionVarName[global.option-2,global.suboption],0)
                else variable_global_set(optionVarName[global.option-2,global.suboption],1)
            }
            else
            {
                if global.option = 2 && global.suboption = 0
                {
                    variable_global_set(optionVarName[0,global.suboption],variable_global_get(optionVarName[0,global.suboption])+ButtonPressedLeftOrRight)
                    if variable_global_get(optionVarName[0,global.suboption]) > 2 variable_global_set(optionVarName[0,global.suboption],0)
                    if variable_global_get(optionVarName[0,global.suboption]) < 0 variable_global_set(optionVarName[0,global.suboption],2)
                    scr_lang_menu_init(global.lang)
                }
                if global.option = 3 && global.suboption = 2
                {
                    if variable_global_get(optionVarName[1,global.suboption]) = WORD_Font variable_global_set(optionVarName[1,global.suboption],testingfont)
                    else variable_global_set(optionVarName[1,global.suboption],WORD_Font)
                }
                if global.option = 2 && global.suboption = 2
                {
                    variable_global_set(optionVarName[0,global.suboption],variable_global_get(optionVarName[0,global.suboption])+ButtonPressedLeftOrRight)
                    if variable_global_get(optionVarName[0,global.suboption]) > 2 variable_global_set(optionVarName[0,global.suboption],0)
                    if variable_global_get(optionVarName[0,global.suboption]) < 0 variable_global_set(optionVarName[0,global.suboption],2)
                }
                if global.option = 3 && global.suboption = 0
                {
                    variable_global_set(optionVarName[1,global.suboption],variable_global_get(optionVarName[1,global.suboption])+ButtonPressedLeftOrRight)
                    if variable_global_get(optionVarName[1,global.suboption]) > ds_list_size(global.voicelist)-1 variable_global_set(optionVarName[1,global.suboption],0)
                    if variable_global_get(optionVarName[1,global.suboption]) < 0 variable_global_set(optionVarName[1,global.suboption],ds_list_size(global.voicelist)-1)
                }
            }
        }
        else
        {
            if optionVarName[global.option-2,global.suboption] = "cheats"
            {
                text = "COMPLETE THE GAME#ON THE BEST#ENDING FIRST"
                instance_create(0,0,obj_textpopup)
            }
            sound_stop(global.S_Locked)
            sound_play(global.S_Locked)
        }
    }
}

//global.S_Locked
/*
if keyboard_check_pressed(vk_right)
{
    if global.option = 1 or global.option = 0
    {
        global.suboption += 1
        if global.suboption > 2 global.suboption = 0
    }
    else
    {
        if optionblocked[global.option-2,global.suboption] != 1
        {
            if global.option != 0
            {
                sound_play(global.S_WellRing)
                if global.option != 0 && !(global.option = 1+2 && global.suboption = 0) && !(global.option = 1+2 && global.suboption = 2) && !(global.option = 0+2 && global.suboption = 2) && !(global.option = 1+2 && global.suboption = 0)
                {
                    if variable_global_get(optionVarName[global.option-2,global.suboption]) = 1 variable_global_set(optionVarName[global.option-2,global.suboption],0)
                    else variable_global_set(optionVarName[global.option-2,global.suboption],1)
                }
                else
                {
                    if global.option = 1+2 && global.suboption = 0
                    {
                        variable_global_set(optionVarName[1],variable_global_get(optionVarName[1])+1)
                        if variable_global_get(optionVarName[1]) > 2 variable_global_set(optionVarName[1],0)
                        if variable_global_get(optionVarName[1]) < 0 variable_global_set(optionVarName[1],2)
                        scr_lang_menu_init(variable_global_get(optionVarName[1]))
                    }
                    if global.option = 1+2 && global.suboption = 2
                    {
                        if variable_global_get(optionVarName[3]) = WORD_Font variable_global_set(optionVarName[3],testingfont)
                        else variable_global_set(optionVarName[3],WORD_Font)
                    }
                    if global.option = 0+2 && global.suboption = 2
                    {
                        variable_global_set(optionVarName[8],variable_global_get(optionVarName[8])+1)
                        if variable_global_get(optionVarName[8]) > 2 variable_global_set(optionVarName[8],0)
                        if variable_global_get(optionVarName[8]) < 0 variable_global_set(optionVarName[8],2)
                    }
                    if global.option = 1+2 && global.suboption = 0
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
            if optionVarName[global.option,global.suboption] = "cheats"
            {
                text = "COMPLETE THE GAME#ON THE BEST#ENDING FIRST"
                instance_create(0,0,obj_textpopup)
            }
            sound_stop(global.S_Locked)
            sound_play(global.S_Locked)
        }
    }
}*/

texture_set_interpolation(global.BL_filter)

if global.option > 3 scroll = -lerp((global.option-3) * 10,abs(scroll),0.5)
else scroll = - abs(scroll)/2
