#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
anim = 0
mycolor = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
    anim += 0.5
    mycolor = $ffffff
}
else
{
    anim = 0
    //mycolor = $9e9e9e
}
if anim > sprite_width
{
    anim = 0
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_part_ext(sprTicon,image_index,anim,0,sprite_width-anim,sprite_height,x-11,y-24,1,1,mycolor,image_alpha)
draw_sprite_part_ext(sprTicon,image_index,0,0,anim,sprite_height,x+sprite_width-anim-11,y-24,1,1,mycolor,image_alpha)
//draw_sprite_part_ext(sprTicon,image_index,sprite_width,0,sprite_width-(sprite_width-anim),sprite_height,x+anim,y,1,1,$ffffff,1)
#define KeyPress_38
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
if image_index = 0
{
image_index = 0
}

if image_index != 0
{
image_index -= 1
}
sound_play(global.S_MS_Move)
}
#define KeyPress_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
if image_index = 4
{
image_index = 4
}

if image_index != 4
{
image_index += 1
}
sound_play(global.S_MS_Move)
}
