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
global.TDetection = true
global.KDetection = false
global.EDetection = false
if instance_exists(TailsIcon)
{
if TailsIcon.image_index = 0
{
room_goto(7)
}

if TailsIcon.image_index = 1
{
room_goto(10)
}

if TailsIcon.image_index = 2
{
room_goto(52)
}

if TailsIcon.image_index = 3
{
room_goto(21)
}

if TailsIcon.image_index = 4
{
room_goto(42)
}

}
else
{
room_goto(7)
}
