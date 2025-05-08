//dogshit, but it's how the update does this
if !instance_exists(AllPers) return 0;
with AllPers
{
    if sprite_index=sprTailsJump or sprite_index=sprHorrorTailsJump or sprite_index=sprTailsJumpBlack or sprite_index=sprKnucklesJump or sprite_index=sprKnucklesJumpBlack
    or sprite_index=sprEggmanJump or sprite_index=sprScrapEggmanJump or sprite_index=sprEggmanJump or sprite_index=sprSonicJump or sprite_index=sprSlaveSonicJump
    or sprite_index=sprHyperJump or sprite_index=sprMS_Jump //or sprite_index=sprExetiorP_Jump
    {
        //GOD_LEVEL.JumpMode = 1
        return 1;
    }
    else if sprite_index=sprTailsSpindash or sprite_index=sprKnucklesSpindash or sprite_index=sprSonicSpindash or sprite_index=sprHyperSpindash or sprite_index=sprMS_Spindash //or sprite_index=sprExetiorP_Spindash
    {
        return 1;
    }
    else return 0;
}
