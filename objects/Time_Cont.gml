#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_alpha = 1
count = 10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=60
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
count -= 1
alarm[0] = 60
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_Continue_S)
if global.T_bossfight = 1
{
    room_goto(88)
}
if global.TDetection = true
{
    if !instance_exists(AI_Exe)
    {
        room_goto(10)
    }
    else
    {
        room_goto(52)
    }
}

if global.KDetection = true
{
    sound_loop(global.S_You_Can_t_Run)
    room_goto(21)
}

if global.EDetection = true
{
    room_goto(25)
}

if global.FDetection = true
{
    sound_loop(global.S_DF_S)
    room_goto(32)
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.TDetection = true
{
    BL.FF_T = false
    sound_stop(global.S_Continue_S)
    global.TLive = 0
    instance_create(0,0,TPassed)
    room_goto(5)
}
if global.KDetection = true
{
    instance_create(x,y,KnucklesPreDeath)
    BL.FF_K = false
    sound_stop(global.S_Continue_S)
    global.KLive = 0
    instance_create(0,0,KPassed)
    room_goto(5)
}
if global.EDetection = true
{
    BL.FF_E = false
    sound_stop(global.S_Continue_S)
    global.ELive = 0
    instance_create(0,0,EPassed)
    room_goto(5)
}
if global.FDetection = true
{
    sound_stop(global.S_Continue_S)
    global.FLive = 0
    BL.End_1 = 0
    BL.End_2 = 1
    room_goto(62)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if count = 0
{
    count -= 1
    visible = 0
    with Continue_Note instance_destroy()
    with Tails_Cont instance_destroy()
    with Game_Over_FaExe instance_destroy()
    with Game_Over_T instance_destroy()
    with Game_Over_E instance_destroy()
    with Game_Over_Exe3 instance_destroy()
    with Game_Over_Exe instance_destroy()
    with BigLight instance_destroy()
    with HvostBlack instance_destroy()
    with Game_Over_FaKnuckles instance_destroy()
    sound_play(global.S_SCREAM_2)
    alarm[2] = 60
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.DESKFONT)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
if count < 10 draw_text(x+8,y,string("0")+string(count))
else draw_text(x+8,y,string(count))
draw_set_halign(fa_left)
draw_set_valign(fa_left)
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0

if (global.TDetection = true or global.T_bossfight = 1) && Game_Over_T.hspeed = 0
{
    Game_Over_T.hspeed = 5
    alarm[1] = 120
}

if global.KDetection = true
{
    Game_Over_K.sprite_index = sprKnucklesWalk
    Game_Over_K.hspeed = 4
    alarm[1] = 120
}

if global.EDetection = true
{
    Game_Over_E.sprite_index = sprEggmanWalkBlack
    Game_Over_E.hspeed = 4
    alarm[1] = 120
}

if global.FDetection = true
{
    with Game_Over_FaExe
    {
        hspeed = 0
        vspeed = -4
        sprite_index = sprFinalExe_Hit
    }
    BL.Tails_Plot = global.BeforeFFarr[0,0]
    BL.Knuckles_Plot = global.BeforeFFarr[1,0]
    BL.Eggman_Plot = global.BeforeFFarr[2,0]
    BL.FF_T = global.BeforeFFarr[0,1]
    BL.FF_K = global.BeforeFFarr[1,1]
    BL.FF_E = global.BeforeFFarr[2,1]
    BL.End_1 = 0
    BL.End_2 = 0
    global.FLive -= 1
    alarm[1] = 120
}
