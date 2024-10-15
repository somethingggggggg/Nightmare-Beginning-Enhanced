if rolling = false && ground == true
{
    if keyboard_check_pressed(vk_right) && global.vel < -4 && stopping = 0
    {
        sound_play(global.S_skid)
        stopping = 10
    }
    if keyboard_check_pressed(vk_left) && global.vel > 4 && stopping = 0
    {
        sound_play(global.S_skid)
        stopping = -10
    }
}
