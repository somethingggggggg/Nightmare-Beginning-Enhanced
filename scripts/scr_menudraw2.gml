if global.lang != 0 global.Menufont = global.dialoguefont
else global.Menufont = global.SMALLSONFONT
draw_sprite(spr_placeholder,0,346+view_xview[view_current],95+view_yview[view_current])
draw_set_font(global.Menufont)
while i < menulength
{
    if global.option = i draw_set_color(c_yellow)
    else draw_set_color(c_white)

    if global.complete = 0 && i = 2 or optionblocked[i] = 1 draw_set_color(c_gray)
    if string_width(optionname[i]) > 148/*112*/ draw_text_ext_transformed(32+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),optionname[i],0,1000,148/string_width(optionname[i]),1,0)
    else draw_text(32+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),optionname[i])
    draw_set_halign(fa_right)
    if i != 9
    {
        if string_width(optionstate[i,option[i]]) > 80/*64*/ draw_text_ext_transformed(234+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),optionstate[i,option[i]],0,1000,80/string_width(optionstate[i,option[i]]),1,0)
        else draw_text(234+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),optionstate[i,option[i]])
    }
    else
    {
        if ds_list_find_value(global.voicelist,global.voicedir) != ''
        {
            if string_width(string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6)) < 64 draw_text(234+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6))
            else draw_text_ext_transformed(234+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6),0,1000,64/string_width(string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6)),1,0)
        }
        else
        {
            draw_text(234+view_xview[view_current],55+view_yview[view_current]+scroll+(i*10),'off')
        }
    }
    draw_set_halign(fa_left)
    i += 1
}
i = 0
draw_set_font(global.Menufont)
draw_set_color(c_white)
draw_set_halign(fa_center)
if optionblocked[global.option] = 0 draw_text_ext(346+view_xview[view_current],163+view_yview[view_current],optiondesc[global.option],8,192)
else draw_text_ext(346+view_xview[view_current],163+view_yview[view_current],Notavalmessage,8,192)
draw_set_halign(fa_left)
draw_set_font(global.SPRSONFONT)
switch global.option
{
    case 1:
        draw_sprite(sprite722,global.lang,346+view_xview[view_current],95+view_yview[view_current])
    break;
    case 2:
        draw_sprite(spr_numpad,global.cheats,346+view_xview[view_current],95+view_yview[view_current])
    break;
    case 3:
        if global.dialoguefont = WORD_Font
        {
            draw_set_font(WORD_Font)
            draw_text_color(346+view_xview[view_current]-string_width("korinna")/2,95+view_yview[view_current]-string_height("korinna")/2,"korinna",c_white,c_white,c_white,c_white,1)
        }
        else
        {
            draw_set_font(global.dialoguefont)
            draw_text_color(346+view_xview[view_current]-string_width("pallete")/2,95+view_yview[view_current]-string_height("korinna")/2,"pallete",c_white,c_white,c_white,c_white,1)
            draw_set_font(WORD_Font)
        }
    break;
    case 4:
        if global.progressbar = 1
        {
            draw_set_font(global.dialoguefont)
            draw_text_color(406+view_xview[view_current],85+view_yview[view_current],50,$000075,$000051,$000075,$000051,1)
            draw_text_color(426+view_xview[view_current],85+view_yview[view_current],'%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(296+view_xview[view_current],75+view_yview[view_current],346+view_xview[view_current],105+view_yview[view_current],$000075,$000051,$000075,$000051,0)
            draw_rectangle_color(296+view_xview[view_current],75+view_yview[view_current],396+view_xview[view_current],105+view_yview[view_current],$000000,$000000,$000000,$000000,1)
            draw_set_font(global.Menufont)
        }
        else
        {
            draw_set_font(global.SPRSONFONT)
            draw_text(346+view_xview[view_current]-string_width('good luck')/2,95+view_yview[view_current]-8,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 5:
        if global.showfps = 1
        {
            draw_text(346+view_xview[view_current]-string_width(fps)/2,95+view_yview[view_current]-8,fps)
        }
        draw_set_font(global.dialoguefont)
    break;
    case 6:
        if global.newcontent = 1
        {
            draw_sprite_ext(sprTailsDoll,image_index,396+view_xview[view_current],95+view_yview[view_current],-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTR,image_index,296+view_xview[view_current],105+view_yview[view_current],1,1,0,$ffffff,1)    //sprHvostStand
            draw_sprite_ext(sprHvostStand,image_index,331+view_xview[view_current],107+view_yview[view_current],-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTails,image_index,326+view_xview[view_current],105+view_yview[view_current],-1,1,0,$ffffff,1)
        }
        else
        {
            draw_sprite_ext(sprTR,image_index,296+view_xview[view_current],105+view_yview[view_current],1,1,0,$ffffff,1)    //sprHvostStand
            draw_sprite_ext(sprHvostStand,image_index,331+view_xview[view_current],107+view_yview[view_current],-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTails,image_index,326+view_xview[view_current],105+view_yview[view_current],-1,1,0,$ffffff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
    case 7:
        draw_rectangle_color(346+view_xview[view_current]-96+4,95+view_yview[view_current]-64+4,346+view_xview[view_current]+96-4,95+view_yview[view_current]+64-4,$000000,$000000,$000000,$000000,0)
        draw_sprite(sprSlaveSonicWalk,image_index,346+view_xview[view_current],95+view_yview[view_current])
        if global.subcnoise = 1
        {
            //adding 4 pixels so that it fits in the sprplaceholder
            draw_sprite_part_ext(sprNoice1,anim/2,0,0,192-4,128-4,346+view_xview[view_current]-96+4,95+view_yview[view_current]-64+4,1,1,$ffffff,1)
        }
        else
        {
            draw_sprite_part_ext(sprNoice1,anim/2,anim,0,192-anim-4,128-4,346+view_xview[view_current]-96+4,95+view_yview[view_current]-64+4,1,1,$ffffff,1)
            draw_sprite_part_ext(sprNoice1,anim/2,0,0,anim-4,128-4,view_xview[view_current]+346-anim+96,95+view_yview[view_current]-64+4,1,1,$ffffff,1)        }
    break;
    case 8:
        draw_rectangle_color(346+view_xview[view_current]-96+4,95+view_yview[view_current]-64+4,346+view_xview[view_current]+96-4,95+view_yview[view_current]+64-4,c_white,c_white,c_white,c_white,0)
        switch global.fourbythree
        {
            case 0:
                draw_sprite_ext(sprSEGA_LOGO,24,346+view_xview[view_current],95+view_yview[view_current],0.5,0.5,0,c_white,1)
            break;
            case 1:
                draw_sprite_ext(sprSEGA_LOGO,24,346+view_xview[view_current],95+view_yview[view_current],1.3333333333*0.5,1*0.5,0,c_white,1)
            break;
            case 2:
                draw_rectangle_color(346+view_xview[view_current]-96+4,95+view_yview[view_current]-60,346+view_xview[view_current]-70,95+view_yview[view_current]+64-4,c_black,c_black,c_black,c_black,0)
                draw_rectangle_color(346+view_xview[view_current]+96-4,95+view_yview[view_current]-60,346+view_xview[view_current]+70,95+view_yview[view_current]+64-4,c_black,c_black,c_black,c_black,0)
                //draw_rectangle_color(346+view_xview[view_current]+256,95+view_yview[view_current]-64+4,346+view_xview[view_current]+512,95+view_yview[view_current]+64-4,c_black,c_black,c_black,c_black,0)
                draw_sprite_ext(sprSEGA_LOGO,24,346+view_xview[view_current],95+view_yview[view_current],0.5,0.5,0,c_white,1)
            break;
        }
    break;
    case 9:
        draw_sprite(spr_sound,anim/64,346+view_xview[view_current],95+view_yview[view_current])
    break;
}

draw_sprite(spr_placemagic,0,346+view_xview[view_current],95+view_yview[view_current])
