
draw_set_font(global.SPRSONFONT)
i = 0
repeat (3)
{
    draw_sprite(spr_cred_icons,i,view_xview+160,view_yview+(i*144)+credScroll)
    draw_text(view_xview+160,view_yview+(i*144)+credScroll,credArr[i])
    i += 1
}
draw_set_color(c_black)
draw_arrow(view_xview+view_wview-40,view_yview+view_hview-35,view_xview+view_wview-40,view_yview+view_hview-15,15)
draw_arrow(view_xview+view_wview-40,view_yview+35,view_xview+view_wview-40,view_yview+15,15)
draw_set_color(c_white)
draw_arrow(view_xview+view_wview-40,view_yview+40,view_xview+view_wview-40,view_yview+20,10)
draw_arrow(view_xview+view_wview-40,view_yview+view_hview-40,view_xview+view_wview-40,view_yview+view_hview-20,10)
