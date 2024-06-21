#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.Deadly_Mode = true
{
if (BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true)
{
sprite_index = sprDF_Note
sound_loop(global.S_DF2_S)
}
else
{
sprite_index = sprFF_Note
sound_loop(global.S_DF_S)
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
sprite_index = sprDF_Note
sound_loop(global.S_DF_S)
}}

if global.Deadly_Mode = false
{
sprite_index = sprDF_Note
if (BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true)
{
sound_loop(global.S_DF2_S)
}
else
{
sound_loop(global.S_DF_S)
}}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=180
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.Deadly_Mode = true
{
if (BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true)
{
room_goto(82)
}
else
{
room_goto(43)
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
room_goto(79)
}}

if global.Deadly_Mode = false
{
if (BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false) or (BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true)
{
room_goto(82)
}
else
{
room_goto(79)
}}
