draw_set_font(global.SMALLSONFONT)
//Nbe dev you retard just use draw_set_halign(fa_center) you dumb cunt
draw_set_halign(fa_center)
//you fucking idiot you forgot to uncenter it
draw_text((view_xview[0]+view_wview[0]/2),view_yview[0]+8,"back")
suka = 0
repeat(ds_list_size(fuckarr))
{
    if ds_list_size(fuckarr) > suka
    {
        draw_text(view_xview[0]+view_wview[0]/2,view_yview[0]+((suka+2)*8),ds_list_find_value(fuckarr,suka))
    }
    suka += 1
}
if global.option = 0 draw_text_color(view_xview[0]+view_wview[0]/2,view_yview[0]+8,"back",$00ffff,$00ffff,$00ffff,$005555,1)
if global.option > 0 && global.option < ds_list_size(fuckarr)+1 draw_text_color(view_xview[0]+view_wview[0]/2,view_yview[0]+((global.option+1)*8),ds_list_find_value(fuckarr,global.option-1),$00ffff,$00ffff,$00ffff,$005555,1)
