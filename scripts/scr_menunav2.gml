anim += 1
mycolor = $ffffff
if anim > 192
{
    anim = 0
}

if background_alpha[1] < 1
{
    background_alpha[1] += 0.1
}
if background_alpha[2] > 0
{
    background_alpha[2] -= 0.1
}
if keyboard_check_pressed(vk_up) or mouse_wheel_up()
{
global.option -= 1
sound_play(global.S_MS_Move)
}
if keyboard_check_pressed(vk_down) or mouse_wheel_down()
{
global.option += 1
sound_play(global.S_MS_Move)
}
if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)
{
    if global.option = 0
    {
        scr_saveoptions()
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 0
    }
}
if keyboard_check_pressed(vk_left) && global.option != 0
{
    sound_play(global.S_WellRing)
    if global.option != 3 && global.option != 8 && global.option != 9 && global.option != 1
    {
        if option[global.option] = 1 option[global.option] = 0
        else option[global.option] = 1
    }
    else
    {
        if global.option = 1
        {
            option[global.option] -= 1
        }
        if global.option = 3
        {
            if option[global.option] = WORD_Font option[global.option] = testingfont
            else option[global.option] = WORD_Font
        }
        if global.option = 8
        {
            option[global.option] -= 1
            if option[global.option] > 2 option[global.option] = 0
            if option[global.option] < 0 option[global.option] = 2
        }
        if global.option = 9
        {
            option[global.option] -= 1
            if option[global.option] > ds_list_size(global.voicelist)-1 option[global.option] = 0
            if option[global.option] < 0 option[global.option] = ds_list_size(global.voicelist)-1
        }
    }
}
if keyboard_check_pressed(vk_right) && global.option != 0
{
    sound_play(global.S_WellRing)
    if global.option != 3 && global.option != 8 && global.option != 9 && global.option != 1
    {
        if option[global.option] = 1 option[global.option] = 0
        else option[global.option] = 1
    }
    else
    {
        if global.option = 1
        {
            option[global.option] += 1
        }
        if global.option = 3
        {
            if option[global.option] = WORD_Font option[global.option] = testingfont
            else option[global.option] = WORD_Font
        }
        if global.option = 8
        {
            option[global.option] += 1
            if option[global.option] > 2 option[global.option] = 0
            if option[global.option] < 0 option[global.option] = 2
        }
        if global.option = 9
        {
            option[global.option] += 1
            if option[global.option] > ds_list_size(global.voicelist)-1 option[global.option] = 0
            if option[global.option] < 0 option[global.option] = ds_list_size(global.voicelist)-1
        }
    }
}
    global.lang = option[1]
    global.cheats = option[2]
    global.dialoguefont = option[3]
    global.progressbar = option[4]
    global.showfps = option[5]
    global.newcontent = option[6]
    global.subcnoise = option[7]
    global.fourbythree = option[8]
    global.voicedir = option[9]
    if global.lang < 0 global.lang = 2
    if global.lang > 2 global.lang = 0
    if global.option < 0 global.option = menulength-1
    if global.option > menulength-1 global.option = 0
    if global.cheats < 0 global.cheats = 1
    if global.cheats > 1 global.cheats = 0
    option[1] = global.lang
    option[2] = global.cheats
    option[3] = global.dialoguefont
    option[4] = global.progressbar
    option[5] = global.showfps
    option[6] = global.newcontent
    option[7] = global.subcnoise
    option[8] = global.fourbythree
    option[9] = global.voicedir

if global.option > 3 scroll = -((((global.option-3) * 20)+abs(scroll))/2)
else scroll = - abs(scroll)/2


ass -= 0.01
