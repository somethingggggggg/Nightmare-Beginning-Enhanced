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
    switch TailsIcon.image_index
    {
        case 0:
            room_goto(7)
        break;
        case 1:
            room_goto(10)
        break;
        case 2:
            room_goto(52)
        break;
        case 3:
            room_goto(21)
        break;
        case 4:
            room_goto(42)
        break;
    }
    instance_deactivate_object(TailsIcon)
}
else
{
    room_goto(7)
    instance_deactivate_object(TailsIcon)
}
