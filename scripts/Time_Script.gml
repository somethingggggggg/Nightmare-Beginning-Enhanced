if global.pause = 1 exit;
draw_set_font(global.DESKFONT)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_color(c_white)
if instance_exists(AllPers)
{
    draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
}
with FinalSonic
{
    if instance_exists(FinalBackground) && view_visible[1] = false && view_visible[2] = false && Bot = 3
    {
        draw_sprite(sprS_Lives, 0, view_xview+35, view_yview+240)
        //draw_sprite(sprRingCont,global.rings,view_xview+60,view_yview+40)
        draw_sprite(sprLive_Cont,global.SLive-1,view_xview+55,view_yview+244)
        draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(global.rings))
        draw_text(view_xview+57,view_yview+24,FinalTimer.Min)
        if FinalTimer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(FinalTimer.Sec))
        else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(FinalTimer.Sec))
        //draw_sprite(sprRingCont,FinalTimer.Min,view_xview+49,view_yview+24)
        //draw_sprite(sprTimeCont,FinalTimer.Sec,view_xview+73,view_yview+24)
    }
}

with Tails
{
    draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
    //draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
    draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(-global.TR))
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
    //draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
    //draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with Tails2
{
    draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(-global.TR))
    draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
}

with Tails3
{
    draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(-global.TR))
    draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
}

with Tails4
{
    draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(-global.TR))
    draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
}

with tailscustom
{
    draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,global.rings)
    draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
}

with Knuckles
{
    draw_sprite(sprK_Lives, 0, view_xview+35, view_yview+240)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(-global.TR))
    draw_sprite(sprLive_Cont,global.KLive-1,view_xview+55,view_yview+244)
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
}

with Sonic
{
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(-global.TR))
    draw_text(view_xview+57,view_yview+24,Timer3.Min)
    if Timer3.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer3.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer3.Sec))
}

with SuicideSonic
{
    draw_text(view_xview[0]+81,view_yview[0]+40,string(-global.TR))
    draw_text(view_xview[0]+57,view_yview[0]+24,Timer3.Min)
    if Timer3.Sec < 10 draw_text(view_xview[0]+81,view_yview[0]+24,string("0")+string(Timer3.Sec))
    else draw_text(view_xview[0]+81,view_yview[0]+24,string(Timer3.Sec))
}

if instance_exists(DM_Metal)
{
    with DM_Metal
    {
        draw_sprite(sprMS_Lives, 0, view_xview+35, view_yview+240)
        draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(global.rings))
        draw_sprite(sprLive_Cont,string(clamp(global.ELive-1,0,9)),view_xview+55,view_yview+244)

        draw_text(view_xview+57,view_yview+24,Timer.Min)
        if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
        else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
        if sprite_index != sprMS_ChargeUp draw_sprite(sprLaserBallIcon, 0, view_xview[0]+270, view_yview[0]+25)
    }
}

with ExetiorBonus
{
    draw_sprite(sprExe_Lives, 0, view_xview+35, view_yview+240)
    draw_text(view_xview[view_current]+81,view_yview[view_current]+40,string(global.rings))
    draw_sprite(sprLive_Cont,string(clamp(global.SLive-1,0,9)),view_xview+55,view_yview)
    draw_text(view_xview+57,view_yview+24,Timer.Min)
    if Timer.Sec < 10 draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string("0")+string(Timer.Sec))
    else draw_text(view_xview[view_current]+81,view_yview[view_current]+24,string(Timer.Sec))
    //if GOD_LEVEL.State=2 && GOD_LEVEL.FireUse<2{
    //draw_sprite(sprFireBallIcon, 0, view_xview[0]+270, view_yview[0]+25)}
}

draw_set_halign(fa_left)
draw_set_valign(fa_left)
