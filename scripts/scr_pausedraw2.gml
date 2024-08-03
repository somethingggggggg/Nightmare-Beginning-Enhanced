draw_set_font(font6)
//idk why adding half a pixel makes it look better but it does
draw_sprite_stretched(sprpausefuck,0,view_xview[0],view_yview[0],view_wview+0.5,view_hview+0.5)
draw_sprite(spranother,0,view_xview,view_yview)
draw_text(view_xview[0]+view_wview/2-string_width("back to game")/2,view_yview[0]+view_hview[0]/2-64-string_height("back to game")/2,"back to game")
draw_text(view_xview[0]+view_wview/2-string_width("options")/2,view_yview[0]+view_hview[0]/2-string_height("options")/2,"options")
draw_text(view_xview[0]+view_wview/2-string_width("quit game")/2,view_yview[0]+view_hview[0]/2+64-string_height("quit game")/2,"quit game")

switch global.option
{
    case 0:
        draw_text_color(view_xview[0]+view_wview/2-string_width("back to game")/2,view_yview[0]+view_hview[0]/2-64-string_height("back to game")/2,"back to game",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(view_xview[0]+view_wview/2-string_width("options")/2,view_yview[0]+view_hview[0]/2-string_height("options")/2,"options",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 2:
        draw_text_color(view_xview[0]+view_wview/2-string_width("quit game")/2,view_yview[0]+view_hview[0]/2+64-string_height("quit game")/2,"quit game",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
}
