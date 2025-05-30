myfade = 1
if scr_input_dir_get("up","pressed") or mouse_wheel_up()
{
    global.option -= 1
    sound_play(global.S_MS_Move)
}
if scr_input_dir_get("down","pressed") or mouse_wheel_down()
{
    global.option += 1
    sound_play(global.S_MS_Move)
}
if (scr_input_get("enter","pressed") && global.option = 0) or scr_input_get("esc","pressed")
{
    global.menustate = 0
    //scr_applysettings()
}
if keyboard_check_pressed(vk_left)
{
    if global.option = 1
    {
        global.lang -= 1
        sound_play(global.S_WellRing)
    }
    if global.option = 2
    {
        sound_play(global.S_WellRing)
        if global.dialoguefont = WORD_Font global.dialoguefont = testingfont
        else global.dialoguefont = WORD_Font
    }
    if global.option = 3
    {
        sound_play(global.S_WellRing)
        if global.progressbar = 1 global.progressbar = 0
        else global.progressbar = 1
    }
    if global.option = 4
    {
        sound_play(global.S_WellRing)
        if global.showfps = 1 global.showfps = 0
        else global.showfps = 1
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
        sound_play(global.S_WellRing)
        if global.dialoguefont = testingfont global.dialoguefont = WORD_Font
        else global.dialoguefont = testingfont
    }
    if global.option = 3
    {
        sound_play(global.S_WellRing)
        if global.progressbar = 1 global.progressbar = 0
        else global.progressbar = 1
    }
    if global.option = 4
    {
        sound_play(global.S_WellRing)
        if global.showfps = 1 global.showfps = 0
        else global.showfps = 1
    }
}
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 4
if global.option > 4 global.option = 0
