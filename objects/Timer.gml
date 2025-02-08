#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.hardmode = 2 && (room = 11 or room = 40 or (room = 21 && global.TDetection = true))
{
    Sec = 0
    Min = 9
}
else
{
    Sec = 0
    Min = 0
}

alarm[0] = 60
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Sec += 1
alarm[0] = 60
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Sec = 60
{
    Sec = 00
    Min +=1
}

if Min = 10
{
    playerGetHit()
    //game_end()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Time_Script()
