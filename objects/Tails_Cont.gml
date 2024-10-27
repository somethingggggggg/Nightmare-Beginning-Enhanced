#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.TDetection = true
{
    sprite_index = sprTails_Cont
    drawlives = global.TLive
}

if global.KDetection = true
{
    sprite_index = sprKnuckles_Cont
    drawlives = global.KLive
}

if global.EDetection = true
{
    sprite_index = sprEggman_Cont
    drawlives = global.ELive
}
if drawlives < 0
{
    drawlives = 0
}

if global.FDetection = true
{
    image_alpha = 0
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i = 0
repeat(drawlives)
{
    draw_sprite(sprite_index,image_index,x-((drawlives-1)*16)+(i*32),y)
    i += 1
}
