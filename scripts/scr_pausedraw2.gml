draw_set_font(font6)
draw_set_alpha(myfade)
//idk why adding half a pixel makes it look better but it does
draw_sprite_stretched_ext(sprpausefuck,0,view_xview[0],view_yview[0],view_wview+0.5,view_hview+0.5,c_white,1)
draw_sprite_ext(spranother,0,view_xview,view_yview,1,1,0,c_white,myfade)
draw_text(view_xview[0]+view_wview/2-string_width("back to game")/2,view_yview[0]+view_hview[0]/2-64-string_height("back to game")/2,"back to game")
draw_text(view_xview[0]+view_wview/2-string_width("options")/2,view_yview[0]+view_hview[0]/2-string_height("options")/2,"options")
if global.cheats = 0 or room = 38 draw_text(view_xview[0]+view_wview/2-string_width("quit game")/2,view_yview[0]+view_hview[0]/2+64-string_height("quit game")/2,"quit game")
else draw_text(view_xview[0]+view_wview/2-string_width("lvl select")/2,view_yview[0]+view_hview[0]/2+64-string_height("lvl select")/2,"lvl select")

switch global.option
{
    case 0:
        draw_text_color(view_xview[0]+view_wview/2-string_width("back to game")/2,view_yview[0]+view_hview[0]/2-64-string_height("back to game")/2,"back to game",$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
    break;
    case 1:
        draw_text_color(view_xview[0]+view_wview/2-string_width("options")/2,view_yview[0]+view_hview[0]/2-string_height("options")/2,"options",$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
    break;
    case 2:
        if global.cheats = 0 or room = 38 draw_text_color(view_xview[0]+view_wview/2-string_width("quit game")/2,view_yview[0]+view_hview[0]/2+64-string_height("quit game")/2,"quit game",$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
        else draw_text_color(view_xview[0]+view_wview/2-string_width("lvl select")/2,view_yview[0]+view_hview[0]/2+64-string_height("lvl select")/2,"lvl select",$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
    break;
}
