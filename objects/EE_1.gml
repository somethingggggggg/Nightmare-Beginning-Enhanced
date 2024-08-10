#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
image_alpha +=0.01
}

if image_alpha <= 0
{
image_alpha = 0
}}
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=321
invert=0
arg0=Lol! You found the hidden part of the level! Well done!
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ini_open("save.ini")
switch room
{
    case 40:
        ini_write_real('Achivements','THNS_EE_Ach',1)
    break;
    case 42:
        ini_write_real('Achivements','Tdeath_EE_Ach',1)
    break;
}
ini_close()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
