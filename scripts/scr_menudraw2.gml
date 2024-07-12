draw_set_font(WORD_Font)
draw_text(96,180,"back")
draw_text(96,200,"language")
draw_text(96,220,"cheats")
draw_text(96,240,"font")
draw_text(96,260,"FF progressbar")
draw_text(96,280,"Show FPS")
switch global.lang
{
    case 0:
        draw_text(256,200,"en")
    break;
    case 1:
        draw_text(256,200,"ru")
    break;
    case 2:
        draw_text(256,200,"it")
    break;
}
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text(256,220,"on")
            }
            else
            {
                draw_text(256,220,"off")
            }
        }
        else
        {
            draw_text_color(256,220,"off",$464646,$464646,$464646,$464646,1)
        }
        if global.progressbar = 1
        {
            draw_text(256,260,"on")
        }
        else
        {
            draw_text(256,260,"off")
        }
        if global.showfps = 1
        {
            draw_text(256,280,"on")
        }
        else
        {
            draw_text(256,280,"off")
        }
        if global.dialoguefont = WORD_Font
        {
            draw_text(256,240,"old")
        }
        else
        {
            draw_text(256,240,"new")
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
                draw_text_color(256,200,"en",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_text_color(256,200,"ru",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_text_color(256,200,"it",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 2:
        draw_text_color(96,220,"cheats",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(304,288,"enable debug mode and#some cheats accecible with the#numpad (enable numlock on #your keyboard)")
        draw_sprite(spr_numpad,global.cheats,400,220)
        if menusasa.complete = 1
        {
            if global.cheats = 1
            {
                draw_text_color(256,220,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
            else
            {
                draw_text_color(256,220,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            }
        }
        else
        {
            draw_text_color(256,220,"off",$464646,$464646,$464646,$464646,1)
        }
    break;
    case 3:
        draw_text_color(96,240,"font",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(304,288,"pick between original NB font#(korinna) and new NU font#(pallete)")
        if global.dialoguefont = WORD_Font
        {
            draw_text_color(256,240,"old",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_text_color(256,240,"new",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 4:
        draw_text_color(96,260,"FF progressbar",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(304,288,"Toggle the progressbar in#Fatal Fog")
        if global.progressbar = 1
        {
            draw_text_color(256,260,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text_color(400+60, 200+10, 50,$000075,$000051,$000075,$000051,1)
            draw_text_color(400+80, 200+10, '%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(400-50,200,400+50,200+30,$000000,$000000,$000000,$000000,1)
            draw_rectangle_color(400-50,200,400-50 + 50,200+30,$000075,$000051,$000075,$000051,0)
        }
        else
        {
            draw_text_color(256,260,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(400,200,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 5:
        draw_text_color(96,280,"Show FPS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(304,288,"Show FPS")
        if global.showfps = 1
        {
            draw_text_color(256,280,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(400,220,fps)
        }
        else
        {
            draw_text_color(256,280,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
}
if text = 1
{
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0],view_yview[0],"MOD LOADED",$00ffff,$00ffff,$00ffff,$005555,ass)
}
else
{
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0],view_yview[0],"COMPLETE THE GAME#ON THE BEST#ENDING FIRST",$00ffff,$00ffff,$00ffff,$005555,ass)
}
draw_sprite(spr_placeholder,0,400,220)
