anim += 0.5
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
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 0
    }
    if global.option = 8
    {
        splash_show_web('https://freesugaryspireonline.ru/',0)
    }
}
if keyboard_check_pressed(vk_left)
{
    if global.option = 1
    {
        global.lang -=1
        sound_play(global.S_WellRing)
    }
    if global.option = 2
    {
        if complete = 1
        {
            global.cheats -= 1
            sound_play(global.S_WellRing)
        }
        else
        {
            sound_play(global.S_Hit)
            text = 0
            ass = 1
        }
    }
    if global.option = 3
    {
        sound_play(global.S_WellRing)
        if global.dialoguefont = WORD_Font global.dialoguefont = testingfont
        else global.dialoguefont = WORD_Font
    }
    if global.option = 4
    {
        sound_play(global.S_WellRing)
        if global.progressbar = 1 global.progressbar = 0
        else global.progressbar = 1
    }
    if global.option = 5
    {
        sound_play(global.S_WellRing)
        if global.showfps = 1 global.showfps = 0
        else global.showfps = 1
    }
    if global.option = 6
    {
        sound_play(global.S_WellRing)
        if global.newcontent = 1 global.newcontent = 0
        else global.newcontent = 1
    }
    if global.option = 7
    {
        sound_play(global.S_WellRing)
        if global.subcnoise = 1 global.subcnoise = 0
        else global.subcnoise = 1
    }
    //global.leosa_add
    if global.option = 8
    {
        sound_play(global.S_WellRing)
        if global.leosa_add = 1 global.leosa_add = 0
        else global.leosa_add = 1
    }
}
if keyboard_check_pressed(vk_right)
{
    if global.option = 1
    {
        global.lang +=1
        sound_play(global.S_WellRing)
    }
    if global.option = 2
    {
        if complete = 1
        {
            global.cheats += 1
            sound_play(global.S_WellRing)
        }
        else
        {
            sound_play(global.S_Hit)
            text = 0
            ass = 1
        }
    }
    if global.option = 3
    {
        sound_play(global.S_WellRing)
        if global.dialoguefont = testingfont global.dialoguefont = WORD_Font
        else global.dialoguefont = testingfont
    }
    if global.option = 4
    {
        sound_play(global.S_WellRing)
        if global.progressbar = 1 global.progressbar = 0
        else global.progressbar = 1
    }
    if global.option = 5
    {
        sound_play(global.S_WellRing)
        if global.showfps = 1 global.showfps = 0
        else global.showfps = 1
    }
    if global.option = 6
    {
        sound_play(global.S_WellRing)
        if global.newcontent = 1 global.newcontent = 0
        else global.newcontent = 1
    }
    if global.option = 7
    {
        sound_play(global.S_WellRing)
        if global.subcnoise = 1 global.subcnoise = 0
        else global.subcnoise = 1
    }
    if global.option = 8
    {
        sound_play(global.S_WellRing)
        if global.leosa_add = 1 global.leosa_add = 0
        else global.leosa_add = 1
    }
}
if global.option > 2 scroll = -((((global.option-2) * 20)+abs(scroll))/2)
else scroll = - abs(scroll)/2
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 4
if global.cheats < 0 global.cheats = 1
if global.cheats > 1 global.cheats = 0
ass -= 0.01
