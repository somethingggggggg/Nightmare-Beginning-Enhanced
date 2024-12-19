draw_set_font(font6)
draw_set_alpha(myfade)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
//idk why adding half a pixel makes it look better but it does
if prevset[3,0] = 1 or global.performance = 1 draw_sprite_tiled(spr_NBRsomething,0,view_xview[view_current],view_yview[view_current]+(time/2))
else
{
    draw_sprite_stretched(sprpausefuck,0,view_xview[view_current],view_yview[view_current],view_wview[view_current]+0.5,view_hview[view_current]+0.5)
    draw_sprite(spranother,0,view_xview[view_current],view_yview[view_current])
}
draw_text(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2-64,str_back)
draw_text(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2,str_opt)
if global.cheats = 0 or room = 38 draw_text(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2+64,str_quit)
else draw_text(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2+64,str_select)

switch global.option
{
    case 0:
        draw_text_color(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2-64,str_back,$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
    break;
    case 1:
        draw_text_color(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2,str_opt,$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
    break;
    case 2:
        if global.cheats = 0 or room = 38 draw_text_color(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2+64,str_quit,$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
        else draw_text_color(view_xview[view_current]+view_wview[view_current]/2,view_yview[view_current]+view_hview[view_current]/2+64,str_select,$00f6ff,$00f6ff,$00f6ff,$00f6ff,myfade)
    break;
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)
