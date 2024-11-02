#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
ground = false;
acc = 0.066875;
maxSpeed = 7
canSpriteChange = true
Phase_2 = false
Timer_Up = 100
drawAngle = 0
hsp = 0
vsp = 0
sound_stop(global.S_HideSound)
sound_loop(global.S_Chase)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(HSE_Walker)
{
with HSE_Walker
{
instance_destroy()
}
sound_stop(global.S_Chase)
sound_loop(global.S_HideSound)
    with HSE_GA
    {
        AwakeTime = 400
        SleepTimer = 300
        SleepTime = true
        Phase_2 = false
        image_alpha = 1
    }
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Gravity
/*if place_meeting(x, y+vspeed+1, HS_1G) && vspeed >= 0
{
   ground = true;
   //gravity = 0;
}
else
{
    ground = false;
    gravity = 0.25;
}
if vspeed > 8 vspeed = 8;*/
x += hsp
if place_meeting(x, y, HS_1G)
{
    sprite_index = sprHSE_Walker
    mask_index = sprHSE_Walker
    do x -= scr_is_plus(hsp)
    until !place_meeting(x, y, HS_1G)
    hsp = 0
}
vsp += 0.25
y += vsp
if place_meeting(x, y, HS_1G)
{
    ground = true
    sprite_index = sprHSE_Walker
    mask_index = sprHSE_Walker
    do y -= scr_is_plus(vsp)
    until !place_meeting(x, y, HS_1G)
    vsp = 0
}
else
{
    ground = false
}
//Movement
if instance_exists(Tails3)
{
    if !instance_exists(HSE_Watch)
    {
        if Tails3.x < x
        {
            image_xscale = -1
            hsp = -4
        }
        else
        {
            image_xscale = 1
            hsp = 4
        }
    }
}

//Jump
if collision_rectangle(x-10,y-30,x+30,y-150,Tails3,1,0) && sprite_index != sprHSE_GAJump && !place_meeting(x,y,Tails3)
{
    vsp = -7.5
    sprite_index = sprHSE_GAJump
    mask_index = sprHSE_Walker
    hsp = 0
}

if collision_rectangle(x-30,y-30,x+30,y-1000,Tails3,1,0)
{
    if (!collision_rectangle(x,y,x+35,bbox_bottom+1,HS_1G,1,0) or !collision_rectangle(x,y,x-35,bbox_bottom+1,HS_1G,1,0) ) && sprite_index != sprHSE_GAJump
    {
        vsp = -7.5
        sprite_index = sprHSE_GAJump
        mask_index = sprHSE_Walker
    }
}

//Avoid
if collision_line(x,y,x+45,y,HS_1G,1,0) or collision_line(x,y,x-45,y,HS_1G,1,0) && ground = true && !place_meeting(x,y,Tails3)
{
    sprite_index = sprHSE_GAJump
    mask_index = sprHSE_Walker
    vsp = -7.5
}

//Jump Out
if collision_line(x,y,x,y-50,TeleportRing,0,0)
{
    hsp = 0
    vsp = -7.5
    sprite_index = sprHSE_GAJump
    mask_index = sprHSE_Walker
}


//Capture
if place_meeting(x,y,Tails3)
{
    Timer_Up -= 1
    sprite_index = sprHSE_Catch
    mask_index = sprHSE_Walker
    depth = Tails3.depth+1
    vsp = 0
}
    else
    {
        if global.hardmode = 0 Timer_Up = 100
        else if Timer_Up < 100 Timer_Up += 1
    }
if global.Tails_mode = true
{
    if Timer_Up <= 0 && !instance_exists(TailsFatality)
    {
        instance_create(Tails3.x,Tails3.y,TailsFatality)
        hsp = 0
        vsp = 0
        gravity = 0
        with Tails3
        {
            Tails3.maxSpeed = 0
            gravity = 0
        }
        view_object[0] = TailsFatality
    }
}


if instance_exists(TailsFatality)
{
    if TailsFatality.Dissappear = true
    {
        image_alpha -= 0.01
    }
}

if instance_exists(TailsFatality)
{
    if TailsFatality.Appear = true
    {
        with HSE_GA
        {
            sprite_index = sprHSE_Sleep
            mask_index = sprHSE_Walker
            AwakeTime = 400
            SleepTimer = 300
            SleepTime = true
            Phase_2 = false
            image_alpha = 1
        }
        with Tails3
        {
            maxSpeed = 3.5
        }
        view_object[0] = Tails3
        instance_destroy()
    }
}

if global.Tails_mode = false && !instance_exists(TailsFatality)
{
    if Timer_Up <= 0
    {
        sound_stop_all()
        sound_play(global.S_SCREAM_2)
        room_goto(14)
    }
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*image_xscale = -image_xscale
#define Collision_HS_1G
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if place_meeting(x,bbox_bottom,HS_1G)
{
    move_contact_solid(270, 4);
    vspeed = 0;
    sprite_index = sprHSE_Walker
}

if place_meeting(bbox_left,y,HS_1G) or place_meeting(bbox_right,y,HS_1G)
{
    //x=xprevious
    do x -= 1 * sign(hspeed)
    until !place_meeting(x-1,y,HS_1G) && !place_meeting(x+1,y,HS_1G)
    hspeed = 0
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.dialoguefont)
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, drawAngle, image_blend, image_alpha);
if place_meeting(x,y,Tails3) && !instance_exists(TailsFatality)
{
    draw_text_color(view_xview[0]+210,view_yview[0]+20,Timer_Up, $5050cf,$5050cf,$5050cf,$5050cf,1)
}
