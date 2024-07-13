#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hp = 5
invis_timer = 0
state = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if invis_timer <= 0
{
    if place_meeting(x,y,tailscustom)
    {
        if tailscustom.sprite_index = sprTailsJump
        {
            hp -= 1
            invis_timer = 150
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
if state = 0
{

}
