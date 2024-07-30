draw_set_font(font6)
draw_text(view_xview+(view_wview/2)-(string_width("OPTIONS")/2),128,"OPTIONS")
draw_text(view_xview+(view_wview/2)-(string_width("LOAD MOD")/2),192,"LOAD MOD")
draw_text(view_xview+(view_wview/2)-(string_width("CREDITS")/2),256,"CREDITS")
draw_text(view_xview+(view_wview/2)-(string_width("APPLY")/2),320,"APPLY")
switch global.option
{
    case 0:
        draw_text_color(view_xview+(view_wview/2)-(string_width("OPTIONS")/2),128,"OPTIONS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(view_xview+(view_wview/2)-(string_width("LOAD MOD")/2),192,"LOAD MOD",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 2:
        draw_text_color(view_xview+(view_wview/2)-(string_width("CREDITS")/2),256,"CREDITS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 3:
        draw_text_color(view_xview+(view_wview/2)-(string_width("APPLY")/2),320,"APPLY",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
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
ass -= 0.01
