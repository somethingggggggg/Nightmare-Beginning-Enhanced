#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
Teleport_1 = false
Teleport_2 = false
Teleport_3 = false
Teleport_4 = false
Teleport_5 = false
Teleport_6 = false
Teleport_7 = false
Win_mode = false
Lose_mode = false
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_1 = true
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_2 = true
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_3 = true
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_4 = true
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_5 = true
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_6 = true
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Teleport_7 = true
#define Alarm_8
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
Win_mode = false
sprite_index = sprTeleportRing
#define Alarm_9
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.Tails_mode = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
image_alpha +=0.01
}}

if image_alpha <= 0
{
image_alpha = 0
}

//Re-color
if view_object[0] = Tails3
{
if collision_circle(x,y,150,HSE_Walker,1,0)
{
Lose_mode = true
}

if !collision_circle(x,y,150,HSE_Walker,1,0)
{
Lose_mode = false
}


if Win_mode = true
{
sprite_index = sprWinRing
}

if Lose_mode = true && Act = 0
{
sprite_index = sprDeathRing
}

if Win_mode = true && Act = 0
{
Act = 1
alarm[8] = 120
}}
#define Collision_Tails3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Tails
if Teleport_1 = true && image_alpha >= 1
{
with Tails3
{
instance_create(2080,640,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_2 = true && image_alpha >= 1
{
with Tails3
{
instance_create(3264,1408,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_3 = true && image_alpha >= 1
{
with Tails3
{
instance_create(3008,400,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_4 = true && image_alpha >= 1
{
with Tails3
{
instance_create(2160,928,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_5 = true && image_alpha >= 1
{
with Tails3
{
instance_create(160,512,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_6 = true && image_alpha >= 1
{
with Tails3
{
instance_create(560,16,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_7 = true && image_alpha >= 1
{
with Tails3
{
instance_create(2944,1888,Tails3)
instance_destroy()
}
sound_play(global.S_Warp2)
}

//tails
if global.Tails_mode = true
{
if Teleport_1 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(2080,640,HvostStand2)
instance_destroy()
}}

if Teleport_2 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(3264,1408,HvostStand2)
instance_destroy()
}}

if Teleport_3 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(3008,400,HvostStand2)
instance_destroy()
}}

if Teleport_4 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(2160,928,HvostStand2)
instance_destroy()
}}

if Teleport_5 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(160,512,HvostStand2)
instance_destroy()
}}

if Teleport_6 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(560,16,HvostStand2)
instance_destroy()
}}

if Teleport_7 = true && image_alpha >= 1
{
with HvostStand2
{
instance_create(2944,1888,HvostStand2)
instance_destroy()
}}}

if Win_mode = true
{
if global.Tails_mode = false
{
instance_create(Tails3.x,Tails3.y,HvostStand2)
sound_play(global.S_Warp)
sound_play(global.S_TimeLine_Off)
alarm[9] = 10
}
if global.Tails_mode = true
{
with Tails3
{
instance_destroy()
}

with HvostStand2
{
instance_destroy()
}
instance_change(WinRingOut,TeleportRing)
sound_stop(global.S_HideSound)
sound_play(global.S_Warp2)
}}

if Lose_mode = true
{
with Tails3
{
instance_destroy()
}

with HvostStand2
{
instance_destroy()
}
instance_change(DeathRingOut,TeleportRing)
sound_stop(global.S_HideSound)
sound_play(global.S_Warp2)
}
#define Collision_HSE_Walker
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Teleport_1 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(2080,640,HSE_Walker)
instance_destroy()
}
sound_play(TeleWarp_S)
}

if Teleport_2 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(3264,1408,HSE_Walker)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_3 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(3008,400,HSE_Walker)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_4 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(2160,928,HSE_Walker)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_5 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(160,512,HSE_Walker)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_6 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(560,16,HSE_Walker)
instance_destroy()
}
sound_play(global.S_Warp2)
}

if Teleport_7 = true && image_alpha >= 1
{
with HSE_Walker
{
instance_create(2944,1888,HSE_Walker)
instance_destroy()
}
sound_play(global.S_Warp2)
}

Win_mode = true
