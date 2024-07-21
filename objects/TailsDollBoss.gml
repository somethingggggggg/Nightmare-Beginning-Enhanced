#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hp = 11
invis_timer = 0
image_speed = 0.2
state = 1
a = 0
fight = 0
image_xscale = -1
timer = 300
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(tailscustom)
{
if tailscustom.botmode = 4 && place_meeting(x,y,tailscustom)
{
    hspeed = 0
    vspeed = 0
    exit;
}
if tailscustom.botmode = 5 && a = 0
{
    if place_meeting(x,y,a_solidlool)
    {
        hspeed = 0
        sound_play(global.S_Crack_Wall)
        instance_create(544,0,obj_cutscene_wall)
        a = 1
    }
    else
    {
        hspeed = 5
    }
}
    if tailscustom.botmode = 0 && fight = 1
    {
        if timer = 0
        {
            if state = 1
            {
                state = 2
            }
            else
            {
                state = 1
            }
            timer = 300
        }
        else
        {
            timer -= 1
        }
        image_xscale = (tailscustom.x - x) / abs(tailscustom.x - x)
        switch state
        {
            case 0:
                if x > view_xview[0] + view_wview[0] / 2
                {
                    hspeed += -0.25
                }
                else
                {
                    hspeed += 0.25
                }
            if y > view_yview[0] + view_hview[0] / 2
            {
                vspeed += -0.25
            }
            else
            {
                vspeed += 0.25
            }
            break;
            case 1:
                if x > view_xview[0] + view_wview[0] / 2
                {
                    hspeed += -0.25
                }
                else
                {
                    hspeed += 0.25
                }
                if vspeed > 2 vspeed = 2
                if vspeed < -2 vspeed = -2
            if y > tailscustom.y + vspeed
            {
                vspeed += -0.25
            }
            else
            {
                vspeed += 0.25
            }
            break;
            case 2:
                if x > view_xview[0] + view_wview[0] / 2
                {
                    hspeed += -0.25 //* (11 - hp) / 3
                }
                else
                {
                    hspeed += 0.25 //* (11 - hp) / 3
                }
                if vspeed > 2 vspeed = 2
                if vspeed < -2 vspeed = -2
            if y > view_yview[0]
            {
                vspeed += -0.25
            }
            else
            {
                vspeed += 0.25
            }
            break;
        }
    }
if invis_timer <= 0
{
    if place_meeting(x,y,tailscustom)
    {
        if tailscustom.sprite_index = sprTailsJump && instance_exists(sm1)
        {
            hp -= 1
            sound_play(global.S_MetalBroke)
            invis_timer = 50
            tailscustom.vspeed = -tailscustom.vspeed
            global.vel = -global.vel
        }
        else
        {
            with tailscustom
            {
                playerGetHit()
            }
        }
    }
}
else
{
    if image_alpha = 1 image_alpha = 0
    else image_alpha = 1
    invis_timer -= 1
}
}
