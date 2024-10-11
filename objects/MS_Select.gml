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
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
alarm[1] = 5
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
alarm[0] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*Act
if Act = 0
{
sprite_index = sprMS_5
}

if Act = 1
{
sprite_index = sprMS_5_2
image_index = 0
}

if Act = 2
{
sprite_index = sprMS_5
image_index = 1
}
*/
if keyboard_check_pressed(vk_right)
{
        //mp_linear_step_object(x+10000,y, 112,Solid)
        x += 112
        if place_meeting(x,y,Solid)
        {
            x -= 112
        }
        if place_meeting(x,y,Truther)
        {
            if sprite_index = sprMS_5 sprite_index = sprMS_5_1
            else sprite_index = sprMS_5_2
        }
        sound_play(global.S_MS_Move)
}
if keyboard_check_pressed(vk_left)
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
if place_meeting(x,y,Truther)
{
    if Truther.image_index = 0
    {
        global.Deadly_Mode = false
    }
    if Truther.image_index = 1
    {
        global.Deadly_Mode = true
    }
}
if place_meeting(x,y,NoteNegetivRings)
{
    if keyboard_check_pressed(vk_left)
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
view_xview = ((x + view_xview) / 2) - view_wview[0]/4
if view_xview < 0 view_xview = 0
if view_xview+view_wview > 736 view_xview = 736-view_wview
#define Collision_TailsSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_enter)
{
instance_create(0,0,Timer_2)
instance_destroy()
}
#define Collision_KnucklesSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_enter)
{
instance_create(0,0,Timer_7)
instance_destroy()
}
#define Collision_EggmanSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_enter)
{
instance_create(0,0,Timer_12)
instance_destroy()
}
#define Collision_FFSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_up)
{
    if FFSELECTOR.image_index = 0
    {
        FFSELECTOR.image_index = 0
    }
    if FFSELECTOR.image_index != 0
    {
        FFSELECTOR.image_index -= 1
        sound_play(global.S_TAB)
    }
}

if keyboard_check_pressed(vk_down)
{
if FFSELECTOR.image_index = 2
{
FFSELECTOR.image_index = 2
}
if FFSELECTOR.image_index != 2
{
FFSELECTOR.image_index += 1
sound_play(global.S_TAB)
}}


if keyboard_check_pressed(vk_enter)
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
}
#define Collision_SonicSELECTOR
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check_pressed(vk_enter)
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
                }
            BL.End_1 = true
            }
            room_goto(62)
            SonicIcon.visible = 0
            TailsIcon.visible = 0
            }
            if global.Final = false
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
if global.Final = false
{
sound_play(global.S_Locked)
}}

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
if global.Final = false
{
sound_play(global.S_Locked)
}}


}
#define Collision_NoteNegetivRings
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*sprite_index = sprMS_5_2
if keyboard_check_pressed(vk_left)
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
if keyboard_check_pressed(vk_enter)
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
if keyboard_check_pressed(vk_right)
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
