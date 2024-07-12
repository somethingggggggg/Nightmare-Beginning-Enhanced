draw_set_font(WORD_Font)
draw_text(view_xview+32,view_yview+80,"back")
draw_text(view_xview+32,view_yview+100,"language")
draw_text(view_xview+32,view_yview+120,"cheats")
draw_text(view_xview+32,view_yview+140,"font")
draw_text(view_xview+32,view_yview+160,"FF progressbar")
draw_text(view_xview+32,view_yview+180,"Show FPS")
switch global.lang
{
    case 0:
        draw_text(view_xview+224,view_yview+100,"en")
    break;
    case 1:
        draw_text(view_xview+224,view_yview+100,"ru")
    break;
    case 2:
        draw_text(view_xview+224,view_yview+100,"it")
    break;
}
            if global.cheats = 1
            {
                draw_text(view_xview+224,view_yview+120,"on")
            }
            else
            {
                draw_text(view_xview+224,view_yview+120,"off")
            }
        if global.progressbar = 1
        {
            draw_text(view_xview+224,view_yview+160,"on")
        }
        else
        {
            draw_text(view_xview+224,view_yview+160,"off")
        }
        if global.dialoguefont = WORD_Font
        {
            draw_text(view_xview+224,view_yview+140,"old")
        }
        else
        {
            draw_text(view_xview+224,view_yview+140,"new")
        }

switch global.option
{
    case 0:
        draw_text_color(view_xview+32,view_yview+80,"back",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(view_xview+32,view_yview+100,"language",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_sprite(sprite722,global.lang,view_xview+400-64,view_yview+120-32)
        draw_text(view_xview+272,view_yview+188,"pick your language")
        switch global.lang
        {
            case 0:
                draw_text_color(view_xview+224,view_yview+100,"en",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_text_color(view_xview+224,view_yview+100,"ru",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_text_color(view_xview+224,view_yview+100,"it",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 2:
        draw_text_color(view_xview+32,view_yview+140,"font",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(view_xview+272,view_yview+188,"pick between original NB font#(korinna) and new NU font#(pallete)")
        if global.dialoguefont = WORD_Font
        {
            draw_text_color(view_xview+224,view_yview+140,"old",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_text_color(view_xview+224,view_yview+140,"new",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 3:
        draw_text_color(view_xview+32,view_yview+160,"FF progressbar",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(view_xview+272,view_yview+188,"Toggle the progressbar in#Fatal Fog")
        if global.progressbar = 1
        {
            draw_text_color(view_xview+224,view_yview+160,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text_color(view_xview+410, view_yview+110, 50,$000075,$000051,$000075,$000051,1)
            draw_text_color(view_xview+430, view_yview+110, '%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(view_xview+300,view_yview+100,view_xview+400,view_yview+130,$000000,$000000,$000000,$000000,1)
            draw_rectangle_color(view_xview+300,view_yview+100,view_xview+350,view_yview+130,$000075,$000051,$000075,$000051,0)
        }
        else
        {
            draw_text_color(view_xview+224,view_yview+160,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(view_xview+335,view_yview+115,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 4:
        draw_text_color(view_xview+32,view_yview+180,"Show FPS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text(view_xview+272,view_yview+188,"Show FPS")
        if global.showfps = 1
        {
            draw_text_color(view_xview+224,view_yview+180,"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(view_xview+335,view_yview+115,fps)
        }
        else
        {
            draw_text_color(view_xview+224,view_yview+180,"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
}
draw_sprite(spr_placeholder,0,view_xview+368,view_yview+120)
