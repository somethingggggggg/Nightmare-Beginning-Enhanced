#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
mycolor = $ffffff
anim = 0
ass = -1
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
switch image_index
{
    case 0:
        if !surface_exists(ass)
        {
            ass = surface_create(81,57)
        }
        surface_set_target(ass)
        //draw_clear_alpha(c_black, 1);
        //draw_rectangle_color(0,0,80,56,c_black,c_black,c_black,c_black,0)
        //draw_sprite(sprSlaveSonicIdle,0,40,28)
        draw_sprite_tiled_ext(sprNoice1,anim/2,anim,0,1,1,c_white,1)
        surface_reset()
        draw_rectangle_color(x-11,y-24,x+sprite_width-11,y+sprite_height-24,c_black,c_black,c_black,c_black,0)
        draw_sprite(sprSlaveSonicIdle,0,x-11+sprite_width/2,y-24+sprite_height/2)
        draw_surface(ass,x-11,y-24)
        /*
        draw_sprite_part_ext(sprNoice1,anim/2,anim,0,sprite_width-anim,sprite_height+0.75,x-11,y-24,1,1,mycolor,image_alpha)
        draw_sprite_part_ext(sprNoice1,anim/2,0,0,anim,sprite_height+0.75,x+sprite_width-anim-11,y-24,1,1,mycolor,image_alpha)
    */
    break;
    case 1:
        draw_sprite_part_ext(sprSH_Back,anim/2,/*511*/anim/2,130,sprite_width,sprite_height-12,x-11,y-24,1,1,$ffffff,1)
        draw_sprite_part_ext(sprSH_Ground,image_index,0,0,sprite_width,sprite_height-36,x-11,y+12,1,1,mycolor,image_alpha)
    break;
    case 2:
        draw_rectangle_color(x-11,y-24,x+sprite_width-11,y+sprite_height-24,$000075,$000051,$000075,$000051,0)
        draw_sprite_part_ext(sprFinalFire,anim/2,478,324,sprite_width,sprite_height,x-11,y-24,1,1,mycolor,image_alpha)
        draw_sprite_part_ext(sprFinalGround,image_index,anim,0,sprite_width-anim,sprite_height-24,x-11,y,1,1,mycolor,image_alpha)
        draw_sprite_part_ext(sprFinalGround,image_index,0,0,anim,sprite_height-24,x+sprite_width-anim-11,y,1,1,mycolor,image_alpha)
    break;
}
