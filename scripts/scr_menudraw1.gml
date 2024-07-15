draw_set_font(font6)
draw_text(208,128,"OPTIONS")
draw_text(196,192,"LOAD MOD")
draw_text(208,256,"CREDITS")
draw_text(224,320,"APPLY")
switch global.option
{
    case 0:
        draw_text_color(208,128,"OPTIONS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(196,192,"LOAD MOD",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 2:
        draw_text_color(208,256,"CREDITS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 3:
        draw_text_color(224,320,"APPLY",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
}
switch text
{
    case 0:
        draw_set_font(global.dialoguefont)
        draw_text_color(view_xview[0],view_yview[0],"COMPLETE THE GAME#ON THE BEST#ENDING FIRST",$00ffff,$00ffff,$00ffff,$005555,ass)
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
