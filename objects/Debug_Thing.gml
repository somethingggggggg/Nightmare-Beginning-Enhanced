#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
vspeed = 0
image_speed = 0.15
view_object[view_current] = Debug_Thing
acc = 0.1
drawAngle = 0
global.xvel = 0;
global.yvel = 0;
maxSpeed = 15;
ground = false

ArrObjDebugMode[0] = DM_Ring
ArrObjDebugMode[1] = TailsLive
ArrObjDebugMode[2] = KnucklesLive
ArrObjDebugMode[3] = EggmanLive
ArrObjDebugMode[4] = TR1
ArrObjDebugMode[5] = DM_Spring
ArrObjDebugMode[6] = DM_MasterEmerald
ArrObjDebugMode[7] = DM_Knuckles
ArrObjDebugMode[8] = DM_Tails
ArrObjDebugMode[9] = ScrapEggman
ArrObjDebugMode[10] = DM_Sonic
ArrObjDebugMode[11] = DM_Metal

ArrSprDebugMode[0] = sprRing
ArrSprDebugMode[1] = sprTailsLive
ArrSprDebugMode[2] = sprKnucklesLive
ArrSprDebugMode[3] = sprEggmanLive
ArrSprDebugMode[4] = sprLTR
ArrSprDebugMode[5] = sprDM_Spring
ArrSprDebugMode[6] = sprMasterEmerald
ArrSprDebugMode[7] = sprKnucklesStand
ArrSprDebugMode[8] = sprTailsRacing
ArrSprDebugMode[9] = sprEGGBotStand
ArrSprDebugMode[10] = sprSonic
ArrSprDebugMode[11] = sprMS_Stand

Picked = 0
ArrLength = 12

if instance_exists(HSE_Walker)
{
    with HSE_Walker
    {
        instance_destroy()
    }
    with HSE_GA
    {
        sprite_index = sprHSE_Sleep
        AwakeTime = 400
        SleepTimer = 300
        SleepTime = true
        Phase_2 = false
        image_alpha = 1
        sound_stop(global.S_Chase)
        sound_loop(global.S_HideSound)
    }
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check(vk_left)
{
  global.xvel -= acc
if global.xvel < 0
  global.xvel -= acc
}

if keyboard_check(vk_up)
{
  global.yvel -= acc
if global.yvel < 0
  global.yvel -= acc
}

if keyboard_check(vk_down)
{
  global.yvel += acc
if global.yvel > 0
  global.yvel += acc
}


if keyboard_check(vk_right)
{
  global.xvel += acc
if global.xvel > 0
  global.xvel += acc

}

//Deacceleration
if !keyboard_check(vk_left) && !keyboard_check(vk_right)
{
    global.xvel = 0
}


if !keyboard_check(vk_up) && !keyboard_check(vk_down)
{
    global.yvel = 0
}

x += global.xvel;
y += global.yvel;

if keyboard_check_pressed(ord("D"))
{
    Picked += 1
    Picked = (Picked+ArrLength) mod ArrLength
}
if keyboard_check_pressed(ord("A"))
{
    Picked -= 1
    Picked = (Picked+ArrLength) mod ArrLength
}

sprite_index = ArrSprDebugMode[Picked]

if keyboard_check_pressed(ord("S"))
{
    instance_create(x,y,ArrObjDebugMode[Picked])
    if Picked = 9 ScrapEggman.Bot = 0
    if Picked > 6
    {
        instance_destroy()
        view_object[view_current] = ArrObjDebugMode[Picked]
    }
    if Picked = 4 && instance_exists(EggElevator)
    {
        TR1.sprite_index = sprLTR
    }
}
if keyboard_check_pressed(ord("Q"))
{
    if room=8
    {
        sound_stop_all()
        room_goto(7)
    }

    if room=11
    {
        sound_stop_all()
        room_goto(10)
    }

    if room=40
    {
        sound_stop_all()
        room_goto(52)
    }

    if room=21
    {
        sound_stop_all()
        room_goto(21)
    }

    if room=26
    {
        sound_stop_all()
        room_goto(25)
    }

    if room=66
    {
        sound_stop_all()
        room_goto(68)
    }

    if room=89
    {
        sound_stop_all()
        room_goto(91)
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
draw_sprite(sprDebugHUD,global.lang mod 2,view_xview[0]+10,view_yview[0]+10)
draw_sprite(sprDebugWarnHUD,global.lang mod 2,view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]-9-3)
#define KeyPress_67
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if sprite_index = sprMS_Stand
{
sprite_index = sprMS_Stand
}

if sprite_index = sprMasterEmerald
{
sprite_index = sprMS_Stand
}

if sprite_index = sprSonic
{
sprite_index = sprMasterEmerald
}

if sprite_index = sprScrapEggman
{
sprite_index = sprSonic
}

if sprite_index = sprTailsRacing
{
sprite_index = sprScrapEggman
}

if sprite_index = sprKnucklesStand
{
sprite_index = sprTailsRacing
}

if sprite_index = sprDM_Spring
{
sprite_index = sprKnucklesStand
}

if sprite_index = sprLTR
{
sprite_index = sprDM_Spring
}

if sprite_index = sprEggmanLive
{
sprite_index = sprLTR
}

if sprite_index = sprKnucklesLive
{
sprite_index = sprEggmanLive
}

if sprite_index = sprTailsLive
{
sprite_index = sprKnucklesLive
}

if sprite_index = sprRing
{
sprite_index = sprTailsLive
}
#define KeyPress_69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(HZ_2)
{
instance_create(x,y,Tails)
instance_create(x,y,HvostStand)
view_object[0] = Tails
instance_destroy()
}

if instance_exists(HS_1)
{
instance_create(x,y,Tails2)
Tails2.maxSpeed = 5
instance_create(x,y,HvostStand)
view_object[0] = Tails2
instance_destroy()
}

if instance_exists(HS_1G)
{
instance_create(x,y,Tails3)
if global.Tails_mode = true
{
instance_create(x,y,HvostStand2)
}
view_object[0] = Tails3
instance_destroy()
}

if instance_exists(FF_DT)
{
instance_create(x,y,ExePlayer)
ExePlayer.Bot = 3
view_object[0] = ExePlayer
instance_destroy()
}

if instance_exists(Easter_Sequel)
{
if Easter_Sequel.sprite_index = sprEaster_Sequel2
{
instance_create(x,y,Tails4)
instance_create(x,y,HvostStand)
view_object[0] = Tails4
instance_destroy()
}}

if instance_exists(Easter_Sequel)
{
if Easter_Sequel.sprite_index = sprEaster_Sequel
{
instance_create(x,y,Knuckles)
Knuckles.Bot_mode = false
view_object[0] = Knuckles
instance_destroy()
}}

if global.EDetection = true && instance_exists(Egg_Ground)
{
instance_create(x,y,Eggman)
view_object[0] = Eggman
instance_destroy()
}
if global.EDetection = true && !instance_exists(Egg_Ground)
{
instance_create(x,y,ScrapGround)
view_object[0] = ScrapGround
instance_destroy()
}

if instance_exists(Noice2)
{
instance_create(x,y,Sonic)
view_object[0] = Sonic
instance_destroy()
}

if instance_exists(SuicideSpikes)
{
instance_create(x,y,SuicideSonic)
view_object[0] = SuicideSonic
instance_destroy()
}

if instance_exists(FinalGround2)
{
instance_create(x,y,FinalSonic)
FinalSonic.Bot = 3
view_object[0] = FinalSonic
instance_destroy()
}
#define KeyPress_86
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if sprite_index = sprRing
{
    instance_create(x,y,DM_Ring)
}

if sprite_index = sprTailsLive
{
    instance_create(x,y,TailsLive)
}

if sprite_index = sprKnucklesLive
{
    instance_create(x,y,KnucklesLive)
}

if sprite_index = sprEggmanLive
{
    instance_create(x,y,EggmanLive)
}

if sprite_index = sprLTR
{
    instance_create(x,y,TR1)
    if instance_exists(EggElevator)
    {
        TR1.sprite_index = sprLTR
    }
}

if sprite_index = sprDM_Spring
{
    instance_create(x,y,DM_Spring)
}

if sprite_index = sprKnucklesStand
{
    instance_create(x,y,DM_Knuckles)
    view_object[0] = DM_Knuckles
    instance_destroy()
}

if sprite_index = sprTailsRacing
{
    instance_create(x,y,DM_Tails)
    instance_create(x,y,HvostStand)
    view_object[0] = DM_Tails
    instance_destroy()
}

if sprite_index = sprScrapEggman
{
    instance_create(x,y,ScrapEggman)
    ScrapEggman.Bot = 0
    view_object[0] = ScrapEggman
    instance_destroy()
}

if sprite_index = sprSonic
{
    instance_create(x,y,DM_Sonic)
    view_object[0] = DM_Sonic
    instance_destroy()
}

if sprite_index = sprMasterEmerald
{
    instance_create(x,y,DM_MasterEmerald)
}

if sprite_index = sprMS_Stand
{
    instance_create(x,y,DM_Metal)
    view_object[0] = DM_Metal
    instance_destroy()
}
#define KeyPress_88
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if sprite_index = sprRing
{
    sprite_index = sprRing
}

if sprite_index = sprTailsLive
{
    sprite_index = sprRing
}

if sprite_index = sprKnucklesLive
{
    sprite_index = sprTailsLive
}

if sprite_index = sprEggmanLive
{
    sprite_index = sprKnucklesLive
}

if sprite_index = sprLTR
{
    sprite_index = sprEggmanLive
}

if sprite_index = sprDM_Spring
{
sprite_index = sprLTR
}

if sprite_index = sprKnucklesStand
{
sprite_index = sprDM_Spring
}

if sprite_index = sprTailsRacing
{
sprite_index = sprKnucklesStand
}

if sprite_index = sprScrapEggman
{
sprite_index = sprTailsRacing
}

if sprite_index = sprSonic
{
sprite_index = sprScrapEggman
}

if sprite_index = sprMasterEmerald
{
sprite_index = sprSonic
}

if sprite_index = sprMS_Stand
{
sprite_index = sprMasterEmerald
}
