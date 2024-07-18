if global.pause = 1 exit;
with FinalSonic
{
if instance_exists(FinalBackground) && view_visible[1] = false && view_visible[2] = false && Bot = 3
{
draw_sprite(sprS_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,global.rings,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.SLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,FinalTimer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,FinalTimer.Sec,view_xview+73,view_yview+24)
}}

with Tails
{
draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with Tails2
{
draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with Tails3
{
draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with Tails4
{
draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with tailscustom
{
draw_sprite(sprT_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,global.rings,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.TLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with Knuckles
{
draw_sprite(sprK_Lives, 0, view_xview+35, view_yview+240)
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprLive_Cont,global.KLive-1,view_xview+55,view_yview+244)
draw_sprite(sprRingCont,Timer.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer.Sec,view_xview+73,view_yview+24)
}

with Sonic
{
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprRingCont,Timer3.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer3.Sec,view_xview+73,view_yview+24)
}

with SuicideSonic
{
draw_sprite(sprDesk, 0, view_xview+35, view_yview+32)
draw_sprite(sprRingCont,0,view_xview+60,view_yview+40)
draw_sprite(sprRingCont,Timer3.Min,view_xview+49,view_yview+24)
draw_sprite(sprTimeCont,Timer3.Sec,view_xview+73,view_yview+24)
}
