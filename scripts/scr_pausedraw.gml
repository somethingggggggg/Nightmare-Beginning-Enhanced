draw_set_font(WORD_Font)
//idk why adding half a pixel makes it look better but it does
draw_sprite_stretched(sprpausefuck,0,view_xview[view_current],view_yview[view_current],view_wview+0.5,view_hview+0.5)
draw_sprite(spranother,view_current,view_xview,view_yview)
draw_sprite(spr_placeholder,view_current,346+view_xview[view_current],95+view_yview[view_current])
draw_text(42+view_xview[view_current],55+view_yview[view_current],"back")
draw_text(42+view_xview[view_current],75+view_yview[view_current],"language")
draw_text(42+view_xview[view_current],95+view_yview[view_current],"cheats")
draw_text(42+view_xview[view_current],115+view_yview[view_current],"font")
draw_text(42+view_xview[view_current],135+view_yview[view_current],"FF progressbar")
draw_text(42+view_xview[view_current],155+view_yview[view_current],"Show FPS")
draw_text(42+view_xview[view_current],175+view_yview[view_current],"New content")
switch global.lang
{
    case 0:
        draw_text(234+view_xview[view_current]-string_width("english"),75+view_yview[view_current],"english")
    break;
    case 1:
        draw_text(234+view_xview[view_current]-string_width("russian"),75+view_yview[view_current],"russian")
    break;
    case 2:
        draw_text(234+view_xview[view_current]-string_width("italian"),75+view_yview[view_current],"italian")
    break;
}
            if global.cheats = 1
            {
                draw_text_color(234+view_xview[view_current]-string_width("on"),95+view_yview[view_current],"on",$464646,$464646,$464646,$464646,1)
            }
            else
            {
                draw_text_color(234+view_xview[view_current]-string_width("off"),95+view_yview[view_current],"off",$464646,$464646,$464646,$464646,1)
            }
        if global.progressbar = 1
        {
            draw_text(234+view_xview[view_current]-string_width("on"),135+view_yview[view_current],"on")
        }
        else
        {
            draw_text(234+view_xview[view_current]-string_width("off"),135+view_yview[view_current],"off")
        }
        if global.showfps = 1
        {
            draw_text(234+view_xview[view_current]-string_width("on"),155+view_yview[view_current],"on")
        }
        else
        {
            draw_text(234+view_xview[view_current]-string_width("off"),155+view_yview[view_current],"off")
        }
        if global.dialoguefont = WORD_Font
        {
            draw_text(234+view_xview[view_current]-string_width("old"),115+view_yview[view_current],"old")
        }
        else
        {
            draw_text(234+view_xview[view_current]-string_width("new"),115+view_yview[view_current],"new")
        }
        if global.newcontent = 1
        {
            draw_text_color(234+view_xview[view_current]-string_width("on"),175+view_yview[view_current],"on",$464646,$464646,$464646,$464646,1)
        }
        else
        {
            draw_text_color(234+view_xview[view_current]-string_width("off"),175+view_yview[view_current],"off",$464646,$464646,$464646,$464646,1)
        }

switch global.option
{
    case view_current:
        draw_text_color(42+view_xview[view_current],55+view_yview[view_current],"back",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(42+view_xview[view_current],75+view_yview[view_current],"language",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_sprite(sprite722,global.lang,314+view_xview[view_current],63+view_yview[view_current])
        draw_text(250+view_xview[view_current],163+view_yview[view_current],"pick your language")
        switch global.lang
        {
            case view_current:
                draw_text_color(234+view_xview[view_current]-string_width("english"),75+view_yview[view_current],"english",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_text_color(234+view_xview[view_current]-string_width("russian"),75+view_yview[view_current],"russian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_text_color(234+view_xview[view_current]-string_width("italian"),75+view_yview[view_current],"italian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 2:
        draw_text_color(42+view_xview[view_current],115+view_yview[view_current],"font",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(250+view_xview[view_current],163+view_yview[view_current],"pick between original NB font (korinna) and new NU font (pallete)",16,192)
        if global.dialoguefont = WORD_Font
        {
            draw_text_color(234+view_xview[view_current]-string_width("old"),115+view_yview[view_current],"old",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_text_color(234+view_xview[view_current]-string_width("new"),115+view_yview[view_current],"new",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 3:
        draw_text_color(42+view_xview[view_current],135+view_yview[view_current],"FF progressbar",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(250+view_xview[view_current],163+view_yview[view_current],"Toggle the progressbar in Fatal Fog",16,192)
        if global.progressbar = 1
        {
            draw_text_color(234+view_xview[view_current]-string_width("on"),135+view_yview[view_current],"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text_color(406+view_xview[view_current],85+view_yview[view_current],50,$000075,$000051,$000075,$000051,1)
            draw_text_color(426+view_xview[view_current],85+view_yview[view_current],'%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(296+view_xview[view_current],75+view_yview[view_current],396+view_xview[view_current],105+view_yview[view_current],$000000,$000000,$000000,$000000,1)
            draw_rectangle_color(296+view_xview[view_current],75+view_yview[view_current],346+view_xview[view_current],105+view_yview[view_current],$000075,$000051,$000075,$000051,view_current)
        }
        else
        {
            draw_text_color(234+view_xview[view_current]-string_width("off"),135+view_yview[view_current],"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(346+view_xview[view_current]-string_width('good luck')/2,95+view_yview[view_current]-8,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 4:
        draw_text_color(42+view_xview[view_current],155+view_yview[view_current],"Show FPS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(250+view_xview[view_current],163+view_yview[view_current],"Show FPS",16,192)
        if global.showfps = 1
        {
            draw_text_color(234+view_xview[view_current]-string_width("on"),155+view_yview[view_current],"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(346+view_xview[view_current]-string_width(fps)/2,95+view_yview[view_current]-8,fps)
        }
        else
        {
            draw_text_color(234+view_xview[view_current]-string_width("off"),155+view_yview[view_current],"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
}
draw_sprite(spr_placemagic,0,346+view_xview[view_current],95+view_yview[view_current])
