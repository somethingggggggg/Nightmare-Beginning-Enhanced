draw_set_font(font6)
draw_text(192,128,"OPTIONS")
draw_text(176,192,"LOAD MOD")
draw_text(224,256,"APPLY")
switch global.option
{
    case 0:
        draw_text_color(192,128,"OPTIONS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(176,192,"LOAD MOD",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 2:
        draw_text_color(224,256,"APPLY",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
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
