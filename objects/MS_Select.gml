#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
Act = 0
alarm[0] = 5
noyouwait = 0
deact = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = !image_alpha
alarm[0] = 5
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
alarm[0] = 5
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_goto(94)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if deact
{
    image_alpha = 0
    alarm[0] = -1
    exit;
}
if scr_input_dir_get("right","pressed")
{
    //mp_linear_step_object(x+10000,y, 112,Solid)
    x += 112
    if place_meeting(x,y,Solid) x -= 112;
    if place_meeting(x,y,Truther)
    {
        if sprite_index = sprMS_5 sprite_index = sprMS_5_1
        else sprite_index = sprMS_5_2
    }
    sound_play(global.S_MS_Move)
}
if scr_input_dir_get("left","pressed")
{
    if Act = 0
    {
        //mp_linear_step_object(x-10000,y, 112,Solid)
        if !place_meeting(x,y,NoteNegetivRings)
        {
            sprite_index = sprMS_5
            x -= 112
        }
        else
        {
            sprite_index = sprMS_5_1
        }
        sound_play(global.S_MS_Move)
        if place_meeting(x,y,Solid)
        {
            x += 112
        }
    }
    else if Act = 2
    {
        sound_play(global.S_MS_Move)
        Act = 1
    }
    else if Act = 1
    {
        mp_linear_step_object(x-10000,y, 112,Solid)
        sound_play(global.S_MS_Move)
        Act = 0
    }
}
if place_meeting(x,y,Truther) global.Deadly_Mode = Truther.image_index
if place_meeting(x,y,NoteNegetivRings)
{
    if scr_input_dir_get("left","pressed")
    {
        sprite_index = sprMS_5_1
    }
    else
    {
        sprite_index = sprMS_5_2
    }
    if Cratch.image_index = 0
    {
        global.TR = 0
        BL.T_Ring = false
        BL.K_Ring = false
        BL.E_Ring = false
    }

    if Cratch.image_index = 1
    {
        global.TR = 1
        BL.T_Ring = true
        BL.K_Ring = false
        BL.E_Ring = false
    }

    if Cratch.image_index = 2
    {
        global.TR = 2
        BL.T_Ring = true
        BL.K_Ring = true
        BL.E_Ring = false
    }

    if Cratch.image_index = 3
    {
        global.TR = 3
        BL.T_Ring = true
        BL.K_Ring = true
        BL.E_Ring = true
    }
}
if place_meeting(x,y,TailsSELECTOR)
{
    if scr_input_get("enter","pressed")
    {
        global.TDetection = 1
        global.KDetection = 0
        global.EDetection = 0
        global.FDetection = 0
        with TailsSELECTOR global.lvl_sel_room = lvl[lvl_picked]
        alarm[2] = 200
        deact = 1
    }
}
else if place_meeting(x,y,KnucklesSELECTOR)
{
    if scr_input_get("enter","pressed")
    {
        global.TDetection = 0
        global.KDetection = 1
        global.EDetection = 0
        global.FDetection = 0
        global.lvl_sel_room = 20
        alarm[2] = 200
        deact = 1
        //instance_create(0,0,Timer_7)
        //instance_destroy()
    }
}
else if place_meeting(x,y,EggmanSELECTOR)
{
    if scr_input_get("enter","pressed")
    {
        global.TDetection = 0
        global.KDetection = 0
        global.EDetection = 1
        global.FDetection = 0
        global.lvl_sel_room = 64
        alarm[2] = 200
        deact = 1
    }
}
else if place_meeting(x,y,FFSELECTOR)
{
    with FFSELECTOR
    {
        uod = scr_input_dir_get("down","pressed") - scr_input_dir_get("up","pressed")
        prev_ind = FFSELECTOR.image_index

        image_index = clamp(image_index+uod,0,image_number-1)
        if prev_ind != image_index sound_play(global.S_TAB)
    }

    if scr_input_get("enter","pressed")
    {
        instance_create(0,0,Timer_16)
        if FFSELECTOR.image_index = 0
        {
            PersonalChoiser.Tails_Pers = true
            instance_destroy()
        }
        if FFSELECTOR.image_index = 1
        {
            PersonalChoiser.Knuckles_Pers = true
            instance_destroy()
        }
        if FFSELECTOR.image_index = 2
        {
            PersonalChoiser.Eggman_Pers = true
            instance_destroy()
        }
        instance_create(0,0,GoI)
        instance_create(0,0,GoI_2)
        instance_create(0,0,GoI_3)
        global.BeforeFFarr[0,0] = BL.Tails_Plot
        global.BeforeFFarr[1,0] = BL.Knuckles_Plot
        global.BeforeFFarr[2,0] = BL.Eggman_Plot

        global.BeforeFFarr[0,1] = BL.FF_T
        global.BeforeFFarr[1,1] = BL.FF_K
        global.BeforeFFarr[2,1] = BL.FF_E

        global.FLive = global.TLive + global.KLive + global.ELive
    }
}
else if place_meeting(x,y,SonicSELECTOR)
{
    if scr_input_get("enter","pressed")
    {
        global.TDetection = 0
        global.KDetection = 0
        global.EDetection = 0
        global.FDetection = 0
        with SonicSELECTOR global.lvl_sel_room = lvl[lvl_picked]
        alarm[2] = 200
        deact = 1
    }
    /*
    if scr_input_get("enter","pressed")
    {
        if SonicIcon.image_index = 0
        {
            if global.Final = true
            {
                sound_stop(global.S_Select_Screen)
                TailsIcon.image_alpha = 0
                SonicIcon.image_alpha = 0
                SonicIcon.visible = 0
                TailsIcon.visible = 0
                if global.Deadly_Mode = false
                {
                    BL.End_2 = true
                }
                else
                {
                    BL.T_Ring = (global.TR > 0)
                    BL.K_Ring = (global.TR > 1)
                    BL.E_Ring = (global.TR > 2)
                    BL.End_1 = true
                    /*
                    if global.TR = 0
                    {
                        BL.T_Ring = false
                        BL.K_Ring = false
                        BL.E_Ring = false
                        global.TR = 0
                    }
                    if global.TR = 1
                    {
                        BL.T_Ring = true
                        BL.K_Ring = false
                        BL.E_Ring = false
                        global.TR = 1
                    }
                    if global.TR = 2
                    {
                        BL.T_Ring = true
                        BL.K_Ring = true
                        BL.E_Ring = false
                        global.TR = 2
                    }
                    if global.TR = 3
                    {
                        BL.T_Ring = true
                        BL.K_Ring = true
                        BL.E_Ring = true
                        global.TR = 3
                    }*//*

                }
                room_goto(62)
                SonicIcon.visible = 0
                TailsIcon.visible = 0
            }
            else
            {
                sound_play(global.S_Locked)
            }
        }

        if SonicIcon.image_index = 1
        {
            if global.Final = true
            {
                sound_stop(global.S_Select_Screen)
                TailsIcon.image_alpha = 0
                SonicIcon.image_alpha = 0
                SonicIcon.visible = 0
                TailsIcon.visible = 0
                room_goto(72)
            }
            else
            {
                sound_play(global.S_Locked)
            }
        }

        if SonicIcon.image_index = 2
        {
            if global.Final = true
            {
                sound_stop(global.S_Select_Screen)
                TailsIcon.image_alpha = 0
                SonicIcon.image_alpha = 0
                SonicIcon.visible = 0
                TailsIcon.visible = 0
                room_goto(68)
            }
            else
            {
                sound_play(global.S_Locked)
            }
        }
    }*/
}


/*
view_xview = ((x + view_xview) / 2) - view_wview[0]/4
if view_xview < 0 view_xview = 0
if view_xview+view_wview > 736 view_xview = 736-view_wview
#define Collision_TailsSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Collision_KnucklesSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Collision_EggmanSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Collision_FFSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Collision_SonicSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Collision_NoteNegetivRings
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*sprite_index = sprMS_5_2
if scr_input_dir_get("left","pressed")
{
    image_index = 0
}
else
{
    image_index = 1
}
if Cratch.image_index = 0
{
global.TR = 0
BL.T_Ring = false
BL.K_Ring = false
BL.E_Ring = false
}

if Cratch.image_index = 1
{
global.TR = 1
BL.T_Ring = true
BL.K_Ring = false
BL.E_Ring = false
}

if Cratch.image_index = 2
{
global.TR = 2
BL.T_Ring = true
BL.K_Ring = true
BL.E_Ring = false
}

if Cratch.image_index = 3
{
global.TR = 3
BL.T_Ring = true
BL.K_Ring = true
BL.E_Ring = true
}
#define Collision_FinalSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
if scr_input_get("enter","pressed")
{
if global.Final = false
{
sound_play(global.S_Locked)
}

if global.Final = true
{
sound_stop(global.S_Select_Screen)
TailsIcon.image_alpha = 0
SonicIcon.image_alpha = 0
room_goto(68)
}}
#define Collision_Truther
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*sprite_index = sprMS_5_2
if scr_input_dir_get("right","pressed")
{
    image_index = 1
}
else
{
    image_index = 0
}
if Truther.image_index = 0
{
    global.Deadly_Mode = false
}
if Truther.image_index = 1
{
    global.Deadly_Mode = true
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
view_xview[view_current] = lerp(clamp(x-(view_wview[view_current]/2),0,736-view_wview[view_current]),view_xview[view_current],0.5)
#define KeyPress_37
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if Act = 0
{
mp_linear_step_object(x-10000,y, 112,Solid)
sound_play(global.S_MS_Move)
}
else if Act = 2
{
sound_play(global.S_MS_Move)
Act = 1
}
else if Act = 1
{
mp_linear_step_object(x-10000,y, 112,Solid)
sound_play(global.S_MS_Move)
Act = 0
}
#define KeyPress_39
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if Act = 0
{
mp_linear_step_object(x+10000,y, 112,Solid)
sound_play(global.S_MS_Move)
}
else if Act = 1
{
sound_play(global.S_MS_Move)
Act = 2
}
