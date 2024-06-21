#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=300
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
if BL.Eggman_Plot = true && BL.Knuckles_Plot = true && BL.Tails_Plot = false
{
room_goto(80)
}
else
{
room_goto(31)
}}

if global.Deadly_Mode = false
{
if (BL.Tails_Plot = true && BL.Knuckles_Plot = true) or (BL.Tails_Plot = true && BL.Eggman_Plot = true) or (BL.Eggman_Plot = true && BL.Knuckles_Plot = true) or (BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true)
{
room_goto(80)
}
else
{
room_goto(31)
}}
