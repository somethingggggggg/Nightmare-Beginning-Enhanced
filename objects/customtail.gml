#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(tailscustom)
{
    if tailscustom.image_xscale = 1
    {
        image_xscale = 1
        move_snap(tailscustom.x-5,tailscustom.y+4)
    }

    if instance_exists(tailscustom) && tailscustom.image_xscale = -1
    {
        image_xscale = -1
        move_snap(tailscustom.x+5,tailscustom.y+4)
    }

    if tailscustom.sprite_index = sprScaryTailsWalk or tailscustom.sprite_index = sprTailsWalk or tailscustom.sprite_index = sprTailsRun
    {
        image_alpha = 0
    }

    if tailscustom.sprite_index != sprScaryTailsWalk && tailscustom.sprite_index != sprTailsWalk && tailscustom.sprite_index != sprTailsRun
    {
        image_alpha = 1
    }

    if tailscustom.sprite_index = sprTailsJump
    {
        sprite_index = sprHvostJump
    }
    else
    {
        sprite_index = sprHvostStand
    }
    depth = tailscustom.depth+1
}
