draw_sprite(spr_placeholder,0,400,220)
draw_set_font(WORD_Font)
draw_text(96,180,"back")
draw_text(96,200,"language")
draw_text(96,220,"cheats")
draw_text(96,240,"font")
draw_text(96,260,"FF progressbar")
draw_text(96,280,"Show FPS")
draw_text(96,300,"New content")
switch global.lang
{
    case 0:
        draw_text(288-string_width("english"),200,"english")
    break;
    case 1:
        draw_text(288-string_width("russian"),200,"russian")
    break;
    case 2:
        draw_text(288-string_width("italian"),200,"italian")
    break;
}
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text(288-string_width("on"),220,"on")
            }
            else
            {
                draw_text(288-string_width("off"),220,"off")
            }
        }
        else
        {
            draw_text_color(288-string_width("off"),220,"off",$464646,$464646,$464646,$464646,1)
        }
        if global.progressbar = 1
        {
            draw_text(288-string_width("on"),260,"on")
        }
        else
        {
            draw_text(288-string_width("off"),260,"off")
        }
        if global.showfps = 1
        {
            draw_text(288-string_width("on"),280,"on")
        }
        else
        {
            draw_text(288-string_width("off"),280,"off")
        }
        if global.newcontent = 1
        {
            draw_text(288-string_width("on"),300,"on")
        }
        else
        {
            draw_text(288-string_width("off"),300,"off")
        }
        if global.dialoguefont = WORD_Font
        {
            draw_text(288-string_width("old"),240,"old")
        }
        else
        {
            draw_text(288-string_width("new"),240,"new")
        }

switch global.option
{
    case 0:
        draw_text_color(96,180,"back",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(96,200,"language",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_sprite(sprite722,global.lang,400-32,220-32)
        draw_text(304,288,"pick your language")
        switch global.lang
        {
            case 0:
                draw_text_color(288-string_width("english"),200,"english",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_text_color(288-string_width("russian"),200,"russian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_text_color(288-string_width("italian"),200,"italian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 2:
        draw_text_color(96,220,"cheats",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(304,288,"enable debug mode and some cheats accecible with the numpad (enable numlock on your keyboard)",16,192)
        draw_sprite(spr_numpad,global.cheats,400,220)
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text_color(288-string_width("on"),220,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
            else
            {
                draw_text_color(288-string_width("off"),220,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
        }
        else
        {
            draw_text_color(288-string_width("off"),220,"off",$464646,$464646,$464646,$464646,1)
        }
    break;
    case 3:
        draw_text_color(96,240,"font",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(304,288,"pick between original NB font (korinna) and new NU font (pallete)",16,192)
        if global.dialoguefont = WORD_Font
        {
            draw_text_color(288-string_width("old"),240,"old",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_text_color(288-string_width("new"),240,"new",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 4:
        draw_text_color(96,260,"FF progressbar",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(304,288,"Toggle the progressbar in Fatal Fog",16,192)
        if global.progressbar = 1
        {
            draw_text_color(288-string_width("on"),260,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text_color(400+60, 200+10, 50,$000075,$000051,$000075,$000051,1)
            draw_text_color(400+80, 200+10, '%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(400-50,200,400+50,200+30,$000000,$000000,$000000,$000000,1)
            draw_rectangle_color(400-50,200,400-50 + 50,200+30,$000075,$000051,$000075,$000051,0)
        }
        else
        {
            draw_text_color(288-string_width("off"),260,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(400,200,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 5:
        draw_text_color(96,280,"Show FPS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(304,288,"Show FPS",16,192)
        if global.showfps = 1
        {
            draw_text_color(288-string_width("on"),280,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(400,220,fps)
        }
        else
        {
            draw_text_color(288-string_width("off"),280,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
    case 6:
        draw_text_color(96,300,"New content",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(304,288,"Toggle new content on or off",16,192)
        if global.newcontent = 1
        {
            draw_text_color(288-string_width("on"),300,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_sprite_ext(sprTailsDoll,image_index,450,220,-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTR,image_index,350,230,1,1,0,$ffffff,1)    //sprHvostStand
            draw_sprite_ext(sprHvostStand,image_index,385,232,-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTails,image_index,380,230,-1,1,0,$ffffff,1)
        }
        else
        {
            draw_text_color(288-string_width("off"),300,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_sprite_ext(sprTR,image_index,350,230,1,1,0,$ffffff,1)
            draw_sprite_ext(sprHvostStand,image_index,385,232,-1,1,0,$ffffff,1)
            draw_sprite_ext(sprTails,image_index,380,230,-1,1,0,$ffffff,1)
        }
        draw_set_font(global.dialoguefont)
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
draw_sprite(spr_placemagic,0,400,220)
