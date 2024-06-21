#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 120
Action_1 = false
Action_2 = false
Action_3 = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprDeadSonic
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=150
arg1=1
*/
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Action_1 = true
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprDeadSonic2
arg1=0
arg2=0.1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Action_2 = true
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprDeadSonic3
instance_create(x+40,y,DeadExe2)
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Action_3 = true
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=GirlsRoom(57)
arg1=21
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Action_1 = true
{
image_alpha -= 0.01
}

if image_alpha <= 0 && Action_1 = true
{
Action_1 = false
alarm[2] = 120
}

if Action_2 = true
{
image_alpha += 0.01
}

if image_alpha >= 1 && Action_2 = true
{
Action_2 = false
alarm[3] = 150
}

if Action_3 = true
{
image_alpha -= 0.01
}

if image_alpha <= 0 && Action_3 = true
{
Action_3 = false
alarm[5] = 120
}
