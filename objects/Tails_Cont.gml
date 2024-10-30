#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawlives = 0
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

if global.FDetection = true
{
    sprite_index = sprDF_ExeDeath2
    drawlives = global.FLive
}

if drawlives < 0
{
    drawlives = 0
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
