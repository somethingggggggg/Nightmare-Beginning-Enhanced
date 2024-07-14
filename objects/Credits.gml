#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
alarm[0] = 180
alarm[1] = 555
image_speed =0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
if global.Suicide = true
{
    if global.lang = 0
    {
        sprite_index = sprWC
    }
    if global.lang = 1
    {
        sprite_index = sprWCrus
    }
    if global.lang = 2
    {
        sprite_index = sprWCita
    }
sound_play(global.S_SuicideHill)
}

if global.BestEnd = true
{
    if global.lang = 0
    {
        sprite_index = sprBC
    }
    if global.lang = 1
    {
        sprite_index = sprBCrus
    }
    if global.lang = 2
    {
        sprite_index = sprBCita
    }
sound_play(global.S_BestEndings)
}

if global.GoodEnd = true
{
    if global.lang = 0
    {
        sprite_index = sprGC
    }
    if global.lang = 1
    {
        sprite_index = sprGCrus
    }
    if global.lang = 2
    {
        sprite_index = sprGCita
    }
sound_play(global.S_BestEndings)
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprBC or sprBCrus or sprBCita
{
if image_index = 13
{
alarm[2] = 200
}
else
{
image_index += 1
alarm[1] = 180
}}

if sprite_index = sprGC or sprGCrus or sprGCita
{
if image_index = 12
{
alarm[2] = 180
}
else
{
image_index += 1
alarm[1] = 180
}}

if sprite_index = sprWC or sprWCrus or sprWCita
{
if image_index = 12
{
alarm[2] = 640
}
else
{
image_index += 1
alarm[1] = 240
}}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=332
invert=0
*/
