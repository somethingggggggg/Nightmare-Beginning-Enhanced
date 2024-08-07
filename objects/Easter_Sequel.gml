#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.KDetection = true sprite_index = sprEaster_Sequel
if global.TDetection = true sprite_index = sprEaster_Sequel2
timer = 0
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Cream_528.timeOFF = 0 timer += 1
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer = 1000
{
    sound_stop_all()
    sound_play(global.S_Noice)
}
if timer > 1000
{
    image_speed = 0.5
    depth = -9999999
    sprite_index = sprNoice1
    if timer < 1400
        draw_sprite(sprNoice1, 0, (view_xview[0] + 200), (view_yview[0] + 50))
}
else draw_self()
if timer > 1400
{
    sound_stop_all()
    draw_sprite_ext(sprTailsJumpMask, 0, (view_xview[0] / 2), (view_yview[0] / 2), 500, 500, 0, c_black, 1)
}
if timer > 1600 game_end()
