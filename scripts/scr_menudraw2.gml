draw_sprite(spr_placeholder,0,346+view_xview[0],95+view_yview[0])
draw_set_font(WORD_Font)
draw_text(42+view_xview[0],55+view_yview[0]+scroll,"back")
draw_text(42+view_xview[0],75+view_yview[0]+scroll,"language")
draw_text(42+view_xview[0],95+view_yview[0]+scroll,"cheats")
draw_text(42+view_xview[0],115+view_yview[0]+scroll,"font")
draw_text(42+view_xview[0],135+view_yview[0]+scroll,"FF progressbar")
draw_text(42+view_xview[0],155+view_yview[0]+scroll,"Show FPS")
draw_text(42+view_xview[0],175+view_yview[0]+scroll,"New content")
draw_text(42+view_xview[0],195+view_yview[0]+scroll,"SM Noise")
draw_text(42+view_xview[0],215+view_yview[0]+scroll,"4:3 mode")
draw_text(42+view_xview[0],235+view_yview[0]+scroll,"Voiceover")
switch global.lang
{
    case 0:
        draw_text(234+view_xview[0]-string_width("english"),75+view_yview[0]+scroll,"english")
    break;
    case 1:
        draw_text(234+view_xview[0]-string_width("russian"),75+view_yview[0]+scroll,"russian")
    break;
    case 2:
        draw_text(234+view_xview[0]-string_width("italian"),75+view_yview[0]+scroll,"italian")
    break;
}
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text(234+view_xview[0]-string_width("on"),95+view_yview[0]+scroll,"on")
            }
            else
            {
                draw_text(234+view_xview[0]-string_width("off"),95+view_yview[0]+scroll,"off")
            }
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),95+view_yview[0]+scroll,"off",$464646,$464646,$464646,$464646,1)
        }
        if global.progressbar = 1
        {
            draw_text(234+view_xview[0]-string_width("on"),135+view_yview[0]+scroll,"on")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("off"),135+view_yview[0]+scroll,"off")
        }
        if global.showfps = 1
        {
            draw_text(234+view_xview[0]-string_width("on"),155+view_yview[0]+scroll,"on")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("off"),155+view_yview[0]+scroll,"off")
        }
        if global.dialoguefont = WORD_Font
        {
            draw_text(234+view_xview[0]-string_width("old"),115+view_yview[0]+scroll,"old")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("new"),115+view_yview[0]+scroll,"new")
        }
        if global.newcontent = 1
        {
            draw_text(234+view_xview[0]-string_width("on"),175+view_yview[0]+scroll,"on")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("off"),175+view_yview[0]+scroll,"off")
        }
        if global.subcnoise = 1
        {
            draw_text(234+view_xview[0]-string_width("camera follow"),195+view_yview[0]+scroll,"camera follow")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("original"),195+view_yview[0]+scroll,"original")
        }
        switch global.fourbythree
        {
            case 0:
                draw_text(234+view_xview[0]-string_width("off"),215+view_yview[0]+scroll,"off")
            break;
            case 1:
                draw_text_color(234+view_xview[0]-string_width("stretch"),215+view_yview[0]+scroll,"stretch",c_white,c_white,c_white,c_white,1)
            break;
            case 2:
                draw_text_color(234+view_xview[0]-string_width("black bars"),215+view_yview[0]+scroll,"black bars",c_white,c_white,c_white,c_white,1)
            break;
        }
        if ds_list_find_value(global.voicelist,global.voicedir) != '' draw_text(234+view_xview[0]-string_width(string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6)),235+view_yview[0]+scroll,string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6))
        else draw_text(234+view_xview[0]-string_width('off'),235+view_yview[0]+scroll,'off')
switch global.option
{
    case 0:
        draw_text_color(42+view_xview[0],55+view_yview[0]+scroll,"back",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(42+view_xview[0],75+view_yview[0]+scroll,"language",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_sprite(sprite722,global.lang,314+view_xview[0],63+view_yview[0])
        draw_set_halign(fa_center)
        draw_text(346+view_xview[0],163+view_yview[0],"pick your language")
        draw_set_halign(fa_left)
        switch global.lang
        {
            case 0:
                draw_text_color(234+view_xview[0]-string_width("english"),75+view_yview[0]+scroll,"english",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_text_color(234+view_xview[0]-string_width("russian"),75+view_yview[0]+scroll,"russian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_text_color(234+view_xview[0]-string_width("italian"),75+view_yview[0]+scroll,"italian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 2:
        draw_text_color(42+view_xview[0],95+view_yview[0]+scroll,"cheats",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"enable debug mode and some cheats accecible with the numpad (enable numlock on your keyboard)",16,192)
        draw_set_halign(fa_left)
        draw_sprite(spr_numpad,global.cheats,346+view_xview[0],95+view_yview[0])
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text_color(234+view_xview[0]-string_width("on"),95+view_yview[0]+scroll,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
            else
            {
                draw_text_color(234+view_xview[0]-string_width("off"),95+view_yview[0]+scroll,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),95+view_yview[0]+scroll,"off",$464646,$464646,$464646,$464646,1)
        }
    break;
    case 3:
        draw_text_color(42+view_xview[0],115+view_yview[0]+scroll,"font",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"pick between original NB font (korinna) and new NU font (pallete)",16,192)
        draw_set_halign(fa_left)
        if global.dialoguefont = WORD_Font
        {
            draw_set_font(WORD_Font)
            draw_text_color(346+view_xview[0]-string_width("korinna")/2,95+view_yview[0]-string_height("korinna")/2,"korinna",c_white,c_white,c_white,c_white,1)
            draw_text_color(234+view_xview[0]-string_width("old"),115+view_yview[0]+scroll,"old",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_set_font(global.dialoguefont)
            draw_text_color(346+view_xview[0]-string_width("pallete")/2,95+view_yview[0]-string_height("korinna")/2,"pallete",c_white,c_white,c_white,c_white,1)
            draw_set_font(WORD_Font)
            draw_text_color(234+view_xview[0]-string_width("new"),115+view_yview[0]+scroll,"new",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 4:
        draw_text_color(42+view_xview[0],135+view_yview[0]+scroll,"FF progressbar",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"Toggle the progressbar in Fatal Fog",16,192)
        draw_set_halign(fa_left)
        if global.progressbar = 1
        {
            draw_text_color(234+view_xview[0]-string_width("on"),135+view_yview[0]+scroll,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text_color(406+view_xview[0],85+view_yview[0],50,$000075,$000051,$000075,$000051,1)
            draw_text_color(426+view_xview[0],85+view_yview[0],'%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(296+view_xview[0],75+view_yview[0],396+view_xview[0],105+view_yview[0],$000000,$000000,$000000,$000000,1)
            draw_rectangle_color(296+view_xview[0],75+view_yview[0],346+view_xview[0],105+view_yview[0],$000075,$000051,$000075,$000051,0)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),135+view_yview[0]+scroll,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(346+view_xview[0]-string_width('good luck')/2,95+view_yview[0]-8,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 5:
        draw_text_color(42+view_xview[0],155+view_yview[0]+scroll,"Show FPS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"Show FPS",16,192)
        draw_set_halign(fa_left)
        if global.showfps = 1
        {
            draw_text_color(234+view_xview[0]-string_width("on"),155+view_yview[0]+scroll,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(346+view_xview[0]-string_width(fps)/2,95+view_yview[0]-8,fps)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),155+view_yview[0]+scroll,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
    case 6:
        draw_text_color(42+view_xview[0],175+view_yview[0]+scroll,"New content",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"Toggle new content on or off",16,192)
        draw_set_halign(fa_left)
        if global.newcontent = 1
        {
            draw_text_color(234+view_xview[0]-string_width("on"),175+view_yview[0]+scroll,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_sprite_ext(sprTailsDoll,image_index,396+view_xview[0],95+view_yview[0],-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTR,image_index,296+view_xview[0],105+view_yview[0],1,1,0,$ffffff,1)    //sprHvostStand
            draw_sprite_ext(sprHvostStand,image_index,331+view_xview[0],107+view_yview[0],-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTails,image_index,326+view_xview[0],105+view_yview[0],-1,1,0,$ffffff,1)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),175+view_yview[0]+scroll,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_sprite_ext(sprTR,image_index,296+view_xview[0],105+view_yview[0],1,1,0,$ffffff,1)    //sprHvostStand
            draw_sprite_ext(sprHvostStand,image_index,331+view_xview[0],107+view_yview[0],-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTails,image_index,326+view_xview[0],105+view_yview[0],-1,1,0,$ffffff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
    case 7:
        draw_text_color(42+view_xview[0],195+view_yview[0]+scroll,"SM Noise",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"Change how overlayed noise works in subconcious mind",16,192)
        draw_set_halign(fa_left)
        draw_rectangle_color(346+view_xview[0]-96+4,95+view_yview[0]-64+4,346+view_xview[0]+96-4,95+view_yview[0]+64-4,$000000,$000000,$000000,$000000,0)
        draw_sprite(sprSlaveSonicWalk,image_index,346+view_xview[0],95+view_yview[0])
        if global.subcnoise = 1
        {
            //adding 4 pixels so that it fits in the sprplaceholder
            draw_sprite_part_ext(sprNoice1,anim/2,0,0,192-4,128-4,346+view_xview[0]-96+4,95+view_yview[0]-64+4,1,1,$ffffff,1)
            draw_text_color(234+view_xview[0]-string_width("camera follow"),195+view_yview[0]+scroll,"camera follow",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_sprite_part_ext(sprNoice1,anim/2,anim,0,192-anim-4,128-4,346+view_xview[0]-96+4,95+view_yview[0]-64+4,1,1,$ffffff,1)
            draw_sprite_part_ext(sprNoice1,anim/2,0,0,anim-4,128-4,view_xview[0]+346-anim+96,95+view_yview[0]-64+4,1,1,$ffffff,1)
            draw_text_color(234+view_xview[0]-string_width("original"),195+view_yview[0]+scroll,"original",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 8:
        draw_text_color(42+view_xview[0],215+view_yview[0]+scroll,"4:3 mode",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"Change the screen resolution back to 4:3#VERY EXPERIMENTAL",16,192)
        draw_set_halign(fa_left)
        draw_rectangle_color(346+view_xview[0]-96+4,95+view_yview[0]-64+4,346+view_xview[0]+96-4,95+view_yview[0]+64-4,c_white,c_white,c_white,c_white,0)
        switch global.fourbythree
        {
            case 0:
                draw_sprite_ext(sprSEGA_LOGO,24,346+view_xview[0],95+view_yview[0],0.5,0.5,0,c_white,1)
                draw_text_color(234+view_xview[0]-string_width("off"),215+view_yview[0]+scroll,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_sprite_ext(sprSEGA_LOGO,24,346+view_xview[0],95+view_yview[0],1.3333333333*0.5,1*0.5,0,c_white,1)
                draw_text_color(234+view_xview[0]-string_width("stretch"),215+view_yview[0]+scroll,"stretch",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_rectangle_color(346+view_xview[0]-96+4,95+view_yview[0]-64-4,346+view_xview[0]-70,95+view_yview[0]+64-4,c_black,c_black,c_black,c_black,0)
                draw_rectangle_color(346+view_xview[0]+96-4,95+view_yview[0]-64+4,346+view_xview[0]+70,95+view_yview[0]+64-4,c_black,c_black,c_black,c_black,0)
                //draw_rectangle_color(346+view_xview[0]+256,95+view_yview[0]-64+4,346+view_xview[0]+512,95+view_yview[0]+64-4,c_black,c_black,c_black,c_black,0)
                draw_sprite_ext(sprSEGA_LOGO,24,346+view_xview[0],95+view_yview[0],0.5,0.5,0,c_white,1)
                draw_text_color(234+view_xview[0]-string_width("black bars"),215+view_yview[0]+scroll,"black bars",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 9:
        draw_text_color(42+view_xview[0],235+view_yview[0]+scroll,"Voiceover",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_set_halign(fa_center)
        draw_text_ext(346+view_xview[0],163+view_yview[0],"Choose the voiceover you want (you can add your own by naming a folder voice_ )",16,192)
        draw_set_halign(fa_left)
        if ds_list_find_value(global.voicelist,global.voicedir) != '' draw_text_color(234+view_xview[0]-string_width(string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6)),235+view_yview[0]+scroll,string_copy_end(ds_list_find_value(global.voicelist,global.voicedir),string_length(ds_list_find_value(global.voicelist,global.voicedir))-6),$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        else draw_text_color(234+view_xview[0]-string_width('off'),235+view_yview[0]+scroll,'off',$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
}
switch text
{
    case 0:
        draw_set_font(global.dialoguefont)
        draw_text_color(view_xview[0],view_yview[0],"COMPLETE THE GAME ON THE BEST#ENDING FIRST",$00ffff,$00ffff,$00ffff,$005555,ass)
    break;
    case 1:
        draw_set_font(global.dialoguefont)
        draw_text_color(view_xview[0],view_yview[0],"MOD LOADED",$00ffff,$00ffff,$00ffff,$005555,ass)
    break;
    case 2:
        draw_set_font(global.dialoguefont)
        draw_text_color(view_xview[0],view_yview[0],"MOD LOAD FAILED",$00ffff,$00ffff,$00ffff,$005555,ass)
    break;
}
draw_sprite(spr_placemagic,0,346+view_xview[0],95+view_yview[0])
