draw_set_font(WORD_Font)
draw_sprite(spranother,0,view_xview,view_yview)
draw_sprite(spr_placeholder,0,346+view_xview[0],95+view_yview[0])
draw_text(42+view_xview[0],55+view_yview[0],"back")
draw_text(42+view_xview[0],75+view_yview[0],"language")
draw_text(42+view_xview[0],95+view_yview[0],"cheats")
draw_text(42+view_xview[0],115+view_yview[0],"font")
draw_text(42+view_xview[0],135+view_yview[0],"FF progressbar")
draw_text(42+view_xview[0],155+view_yview[0],"Show FPS")
draw_text(42+view_xview[0],175+view_yview[0],"New content")
switch global.lang
{
    case 0:
        draw_text(234+view_xview[0]-string_width("english"),75+view_yview[0],"english")
    break;
    case 1:
        draw_text(234+view_xview[0]-string_width("russian"),75+view_yview[0],"russian")
    break;
    case 2:
        draw_text(234+view_xview[0]-string_width("italian"),75+view_yview[0],"italian")
    break;
}
            if global.cheats = 1
            {
                draw_text_color(234+view_xview[0]-string_width("on"),95+view_yview[0],"on",$464646,$464646,$464646,$464646,1)
            }
            else
            {
                draw_text_color(234+view_xview[0]-string_width("off"),95+view_yview[0],"off",$464646,$464646,$464646,$464646,1)
            }
        if global.progressbar = 1
        {
            draw_text(234+view_xview[0]-string_width("on"),135+view_yview[0],"on")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("off"),135+view_yview[0],"off")
        }
        if global.showfps = 1
        {
            draw_text(234+view_xview[0]-string_width("on"),155+view_yview[0],"on")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("off"),155+view_yview[0],"off")
        }
        if global.dialoguefont = WORD_Font
        {
            draw_text(234+view_xview[0]-string_width("old"),115+view_yview[0],"old")
        }
        else
        {
            draw_text(234+view_xview[0]-string_width("new"),115+view_yview[0],"new")
        }
        if global.newcontent = 1
        {
            draw_text_color(234+view_xview[0]-string_width("on"),175+view_yview[0],"on",$464646,$464646,$464646,$464646,1)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),175+view_yview[0],"off",$464646,$464646,$464646,$464646,1)
        }

switch global.option
{
    case 0:
        draw_text_color(42+view_xview[0],55+view_yview[0],"back",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
    break;
    case 1:
        draw_text_color(42+view_xview[0],75+view_yview[0],"language",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_sprite(sprite722,global.lang,314+view_xview[0],63+view_yview[0])
        draw_text(250+view_xview[0],163+view_yview[0],"pick your language")
        switch global.lang
        {
            case 0:
                draw_text_color(234+view_xview[0]-string_width("english"),75+view_yview[0],"english",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 1:
                draw_text_color(234+view_xview[0]-string_width("russian"),75+view_yview[0],"russian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
            case 2:
                draw_text_color(234+view_xview[0]-string_width("italian"),75+view_yview[0],"italian",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            break;
        }
    break;
    case 2:
        draw_text_color(42+view_xview[0],115+view_yview[0],"font",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(250+view_xview[0],163+view_yview[0],"pick between original NB font (korinna) and new NU font (pallete)",16,192)
        if global.dialoguefont = WORD_Font
        {
            draw_text_color(234+view_xview[0]-string_width("old"),115+view_yview[0],"old",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("new"),115+view_yview[0],"new",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
    break;
    case 3:
        draw_text_color(42+view_xview[0],135+view_yview[0],"FF progressbar",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(250+view_xview[0],163+view_yview[0],"Toggle the progressbar in Fatal Fog",16,192)
        if global.progressbar = 1
        {
            draw_text_color(234+view_xview[0]-string_width("on"),135+view_yview[0],"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text_color(406+view_xview[0],85+view_yview[0],50,$000075,$000051,$000075,$000051,1)
            draw_text_color(426+view_xview[0],85+view_yview[0],'%',$000075,$000051,$000075,$000051,1)
            draw_rectangle_color(296+view_xview[0],75+view_yview[0],396+view_xview[0],105+view_yview[0],$000000,$000000,$000000,$000000,1)
            draw_rectangle_color(296+view_xview[0],75+view_yview[0],346+view_xview[0],105+view_yview[0],$000075,$000051,$000075,$000051,0)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),135+view_yview[0],"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(346+view_xview[0]-string_width('good luck')/2,95+view_yview[0]-8,'good luck')
        }
        draw_set_font(global.dialoguefont)
    break;
    case 4:
        draw_text_color(42+view_xview[0],155+view_yview[0],"Show FPS",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        draw_text_ext(250+view_xview[0],163+view_yview[0],"Show FPS",16,192)
        if global.showfps = 1
        {
            draw_text_color(234+view_xview[0]-string_width("on"),155+view_yview[0],"on",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
            draw_text(346+view_xview[0]-string_width(fps)/2,95+view_yview[0]-8,fps)
        }
        else
        {
            draw_text_color(234+view_xview[0]-string_width("off"),155+view_yview[0],"off",$00f6ff,$00f6ff,$00f6ff,$00f6ff,1)
        }
        draw_set_font(global.dialoguefont)
    break;
}
draw_sprite(spr_placemagic,0,346+view_xview[0],95+view_yview[0])
