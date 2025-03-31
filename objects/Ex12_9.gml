#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2
time = 0
Target_Tails = false
Target_Knuckles = false
Target_Eggman = false
sound_play(global.S_ChargedUp)
alarm[0] = 342

if !instance_exists(Knuckles)
{

    CharArr[0,0] = AI1
    CharArr[1,0] = AI2
    CharArr[2,0] = AI3

    CharArr[0,1] = Pers1
    CharArr[1,1] = Pers2
    CharArr[2,1] = Pers3

    do randVal = irandom_range(0,2)
    until instance_exists(CharArr[randVal,0]) or instance_exists(CharArr[randVal,1])

    switch randVal
    {
        case 0: Target_Tails = 1 break;
        case 1: Target_Knuckles = 1 break;
        case 2: Target_Eggman = 1 break;
    }
}
/*
if BL.Attack = 1
{
    if instance_exists(Pers1) or instance_exists(AI1)
    {
        Target_Tails = true
    }
    if !instance_exists(Pers1) && !instance_exists(AI1)
    {
        if instance_exists(Pers2) or instance_exists(AI2)
        {
            Target_Knuckles = true
        }
        if !instance_exists(Pers2) && !instance_exists(AI2)
        {
            if instance_exists(Pers3) or instance_exists(AI3)
            {
            Target_Eggman = true
            }
        }
    }
}

if BL.Attack = 2
{
    if instance_exists(Pers2) or instance_exists(AI2)
    {
        Target_Knuckles = true
    }
    if !instance_exists(Pers2) && !instance_exists(AI2)
    {
        if instance_exists(Pers3) or instance_exists(AI3)
        {
            Target_Eggman = true
        }
        if !instance_exists(Pers3) && !instance_exists(AI3)
        {
            if instance_exists(Pers1) or instance_exists(AI1)
            {
                Target_Tails = true
            }
        }
    }
}

if BL.Attack = 3
{
    if instance_exists(Pers3) or instance_exists(AI3)
    {
        Target_Eggman = true
    }
    if !instance_exists(Pers3) && !instance_exists(AI3)
    {
        if instance_exists(Pers1) or instance_exists(AI1)
        {
            Target_Tails = true
        }
        if !instance_exists(Pers1) && !instance_exists(AI1)
        {
            if instance_exists(Pers2) or instance_exists(AI2)
            {
                Target_Knuckles = true
            }
        }
    }
}
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprFinalExe_Jump
vspeed = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Knuckles)
{
    if sprite_index != sprFinalExe_Jump
    {
        move_snap(Knuckles.x,Knuckles.y-96)
    }
}
if Target_Tails = true
{
    if instance_exists(Pers1)
    {
        if sprite_index != sprFinalExe_Jump
        {
            move_snap(Pers1.x,272)
        }
    }
    if instance_exists(AI1)
    {
        if sprite_index != sprFinalExe_Jump
        {
            move_snap(AI1.x,272)
        }
    }
    if !instance_exists(Pers1) && !instance_exists(AI1)
    {
        Target_Tails = false
        Target_Knuckles = true
    }
}

if Target_Knuckles = true
{
    if instance_exists(Pers2)
    {
        if sprite_index != sprFinalExe_Jump
        {
            move_snap(Pers2.x,272)
        }
    }
    if instance_exists(AI2)
    {
        if sprite_index != sprFinalExe_Jump
        {
            move_snap(AI2.x,272)
        }
    }
    if !instance_exists(Pers2) && !instance_exists(AI2)
    {
        Target_Knuckles = false
        Target_Eggman = true
    }
}

if Target_Eggman = true
{
    if instance_exists(Pers3)
    {
        if sprite_index != sprFinalExe_Jump
        {
            move_snap(Pers3.x,272)
        }
    }
    if instance_exists(AI3)
    {
        if sprite_index != sprFinalExe_Jump
        {
            move_snap(AI3.x,272)
        }
    }
    if !instance_exists(Pers3) && !instance_exists(AI3)
    {
        Target_Eggman = false
        Target_Tails = true
    }
}
time += 1
#define Collision_Knuckles
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(Knuckles.x,Knuckles.y,KnucklesStop2)
with Knuckles
{
    instance_destroy()
}
#define Collision_AI1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_ChargedUp)
sound_play(global.S_ExeBeat)
instance_destroy()
#define Collision_AI2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with AI2
{
    BL.FF_K = false
    sound_play(global.S_FFDeath)
    instance_destroy()
}
#define Collision_AI3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with AI3
{
BL.FF_E = false
sound_play(global.S_FFDeath)
instance_destroy()
}
#define Collision_Pers1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Pers1.sprite_index != sprTailsJump
{
if BL.FF_K = true
{
with AI2
{
instance_change(Pers2,AI2)
view_object[0] = Pers2
}}

if BL.FF_K = false && BL.FF_E = true
{
with AI3
{
instance_change(Pers3,AI3)
view_object[0] = Pers3
}}

if BL.FF_K = false && BL.FF_E = false
{
BL.FF_T = false
BL.End_2 = true
sound_stop(global.S_DF_S)
room_goto(33)
}

with HvostBlack
{
instance_destroy()
}
with Pers1
{
instance_change(Death1,Pers1)
}
BL.FF_T = false
sound_play(global.S_FFDeath)
}
#define Collision_Pers2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.FF_T = true
{
    with AI1
    {
        instance_change(Pers1,AI1)
        view_object[0] = Pers1
    }
}

if BL.FF_T = false && BL.FF_E = true
{
    with AI3
    {
        instance_change(Pers3,AI3)
        view_object[0] = Pers3
    }
}

if BL.FF_T = false && BL.FF_E = false
{
    BL.FF_K = false
    BL.End_2 = true
    sound_stop(global.S_DF_S)
    room_goto(33)
}

with Pers2
{
    instance_change(Death2,Pers2)
}
BL.FF_K = false
sound_play(global.S_FFDeath)
#define Collision_Pers3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.FF_T = true
{
    with AI1
    {
        instance_change(Pers1,AI1)
        view_object[0] = Pers1
    }
}

if BL.FF_T = false && BL.FF_K = true
{
    with AI2
    {
        instance_change(Pers2,AI2)
        view_object[0] = Pers2
    }
}

if BL.FF_T = false && BL.FF_K = false
{
    BL.End_2 = true
    sound_stop(global.S_DF_S)
    room_goto(33)
}

with Pers3
{
    instance_change(Death3,Pers3)
}
BL.FF_E = false
sound_play(global.S_FFDeath)
#define Collision_EnergyShieldFF
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_ChargedUp)
sound_play(global.S_ExeBeat)
instance_destroy()
#define Collision_SmachDash
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_ChargedUp)
sound_play(global.S_ExeBeat)
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_pixel_set(global.pshader)
shader_pixel_uniform_f("fade",0.5)
if time < 342 draw_sprite(sprite_index,image_index,x,y+sin(time/16))
else draw_self()
shader_reset()
