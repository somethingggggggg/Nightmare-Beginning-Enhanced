#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
anim = 0
mycolor = 0
ass = -1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_discard(ass)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,MS_Select)
{
    uod = scr_input_dir_get("down","pressed") - scr_input_dir_get("up","pressed")
    if uod != 0
    {
        image_index = clamp(image_index+uod,0,image_number-1)
        sound_play(global.S_MS_Move)
    }
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
//if (live_call) return live_result;

if !surface_exists(ass)
{
    ass = surface_create(sprite_width,sprite_height)
}
surface_set_target(ass)
draw_sprite_tiled(sprTicon,image_index,anim,24)
surface_reset()
draw_surface(ass,x-11,y-24)

/*
draw_sprite_part_ext(sprTicon,image_index,anim,0,sprite_width-anim,sprite_height,x-11,y-24,1,1,mycolor,image_alpha)
draw_sprite_part_ext(sprTicon,image_index,0,0,anim,sprite_height,x+sprite_width-anim-11,y-24,1,1,mycolor,image_alpha)
draw_sprite_part_ext(sprTicon,image_index,sprite_width,0,sprite_width-(sprite_width-anim),sprite_height,x+anim,y,1,1,$ffffff,1)
