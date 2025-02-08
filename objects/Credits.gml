#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
alarm[0] = 180
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1
if global.Suicide = true
{
    switch global.lang
    {
        case 0:
        sprite_index = sprWC
        break;
        case 1:
        sprite_index = sprWCrus
        break;
        case 2:
        sprite_index = sprWCita
        break;
    }
    ini_open("save.ini")
    ini_write_real('progress','worstend',1)
    ini_close()
    //sound_play(global.S_IHNMAINS)
    sound_play(global.S_SuicideHill)
}

if global.BestEnd = true
{
    switch global.lang
    {
        case 0:
        sprite_index = sprBC
        break;
        case 1:
        sprite_index = sprBCrus
        break;
        case 2:
        sprite_index = sprBCita
        break;
    }
    sound_play(global.S_BestEndings)
}

if global.GoodEnd = true
{
    switch global.lang
    {
        case 0:
        sprite_index = sprGC
        break;
        case 1:
        sprite_index = sprGCrus
        break;
        case 2:
        sprite_index = sprGCita
        break;
    }
    sound_play(global.S_BestEndings)
}
//alarm[1] = 375
image_speed = 0.005
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
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index != -1 game_end()
