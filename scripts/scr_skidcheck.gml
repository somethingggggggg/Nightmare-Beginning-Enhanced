if rolling = false && ground == true
{
    var LeftOrRight;
    LeftOrRight = keyboard_check(vk_right) - keyboard_check(vk_left)
    if LeftOrRight != 0 && (global.vel * -sign(LeftOrRight)) > 4 && stopping = 0
    {
        sound_play(global.S_skid)
        stopping = 10 * sign(LeftOrRight)
    }
    /*
    if keyboard_check(vk_right) && !keyboard_check(vk_left) && global.vel < -4 && stopping = 0
    {
        sound_play(global.S_skid)
        stopping = 10
    }
    if keyboard_check(vk_left) && !keyboard_check(vk_right) && global.vel > 4 && stopping = 0
    {
        sound_play(global.S_skid)
        stopping = -10
    }
    */
}
