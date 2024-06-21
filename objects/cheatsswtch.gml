#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if menusasa.complete = 1
{
if global.option = 1 sprite_index=onpct else sprite_index=onunpct
if global.cheats = 0 image_index = 0
if global.cheats = 1 image_index = 1
}
else
{
    sprite_index = ongr
}
