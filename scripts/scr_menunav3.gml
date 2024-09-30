if background_alpha[1] > 0
{
    background_alpha[1] -= 0.1
}
if background_alpha[2] < 1
{
    background_alpha[2] += 0.1
}
if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        sound_play(global.S_Ring)
        global.option = 0
        global.menustate = 0
        view_yview[0] = 125
    }
}
if keyboard_check(vk_up)
{
    view_yview -= 4
}
if keyboard_check(vk_down)
{
    view_yview += 4
}
if global.lang < 0 global.lang = 2
if global.lang > 2 global.lang = 0
if global.option < 0 global.option = 4
if global.cheats < 0 global.cheats = 1
if global.cheats > 1 global.cheats = 0
ass -= 0.01
