#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
sn = sprite_get_number(sprSicon)
lvl_picked = 0
mycolor = $ffffff
anim = 0
ass = -1
lvl[0] = 62
lvl[1] = 71
lvl[2] = 68
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
        lvl_picked = clamp(lvl_picked+uod,0,sn-1)
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
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_discard(ass)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
switch lvl_picked
{
    case 0:
        if !surface_exists(ass)
        {
            ass = surface_create(81,57)
        }
        surface_set_target(ass)
        draw_clear_alpha(c_black, 1);
        //draw_rectangle_color(0,0,80,56,c_black,c_black,c_black,c_black,0)
        draw_sprite(sprSlaveSonicIdle,0,40,28)
        draw_sprite_tiled_ext(sprNoice1,anim/2,anim,0,1,1,c_white,1)
        surface_reset()
        //draw_rectangle_color(x-44,y-97+19+6,x-44+80,y-97+19+6+57,c_black,c_black,c_black,c_black,0)
        //draw_sprite(sprSlaveSonicIdle,0,x-42+80/2,y-97+19+6+57/2)
        draw_surface(ass,x-44+1,y-97+19+6)
        /*
        draw_sprite_part_ext(sprNoice1,anim/2,anim,0,sprite_width-anim,sprite_height+0.75,x-11,y-24,1,1,mycolor,image_alpha)
        draw_sprite_part_ext(sprNoice1,anim/2,0,0,anim,sprite_height+0.75,x+sprite_width-anim-11,y-24,1,1,mycolor,image_alpha)
    */
    break;
    case 1:
        if !surface_exists(ass)
        {
            ass = surface_create(81,57)
        }
        surface_set_target(ass)
        draw_sprite_tiled_ext(sprSH_Back,anim/2,anim/2,8,1,1,c_white,1)
        draw_sprite(sprSH_Ground,0,0,64)
        surface_reset()
        draw_surface(ass,x-44+1,y-97+19+6)
        //draw_sprite_part_ext(sprSH_Back,anim/2,/*511*/anim/2,130,sprite_width,sprite_height-12,x-11,y-24,1,1,$ffffff,1)
        //draw_sprite_part_ext(sprSH_Ground,image_index,0,0,sprite_width,sprite_height-36,x-11,y+12,1,1,mycolor,image_alpha)
    break;
    case 2:
        if !surface_exists(ass)
        {
            ass = surface_create(81,57)
        }
        surface_set_target(ass)
        draw_rectangle_color(0,0,81,57,$000075,$000051,$000075,$000051,0)
        draw_sprite(sprFinalFire,anim/2,0,0)
        draw_sprite_tiled_extra(sprFinalGround,0,anim-81,28,1,1,0,c_white,1,-infinity,1)
        surface_reset()
        draw_surface(ass,x-44+1,y-97+19+6)
        /*
        draw_rectangle_color(x-11,y-24,x+sprite_width-11,y+sprite_height-24,$000075,$000051,$000075,$000051,0)
        draw_sprite_part_ext(sprFinalFire,anim/2,478,324,sprite_width,sprite_height,x-11,y-24,1,1,mycolor,image_alpha)
        draw_sprite_part_ext(sprFinalGround,image_index,anim,0,sprite_width-anim,sprite_height-24,x-11,y,1,1,mycolor,image_alpha)
        draw_sprite_part_ext(sprFinalGround,image_index,0,0,anim,sprite_height-24,x+sprite_width-anim-11,y,1,1,mycolor,image_alpha)
        */
    break;
}
