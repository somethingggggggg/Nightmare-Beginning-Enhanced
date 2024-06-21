#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
    if global.lang = 0
    {
        sprite_index = sprPre_DF1
    }
    if global.lang = 1
    {
        sprite_index = sprPre_DF1rus
    }
    if global.lang = 2
    {
        sprite_index = sprPre_DF1ita
    }
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
    if global.lang = 0
    {
        sprite_index = sprPre_DF2
    }
    if global.lang = 1
    {
        sprite_index = sprPre_DF2rus
    }
    if global.lang = 2
    {
        sprite_index = sprPre_DF2ita
    }
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
    if global.lang = 0
    {
        sprite_index = sprPre_DF3
    }
    if global.lang = 1
    {
        sprite_index = sprPre_DF3rus
    }
    if global.lang = 2
    {
        sprite_index = sprPre_DF3ita
    }
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
    if global.lang = 0
    {
        sprite_index = sprPre_DF4
    }
    if global.lang = 1
    {
        sprite_index = sprPre_DF4rus
    }
    if global.lang = 2
    {
        sprite_index = sprPre_DF4ita
    }
}
alarm[0] = 600
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
show_message("Press 'Enter' to skip")
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=FATAL_FOG(31)
arg1=21
*/
