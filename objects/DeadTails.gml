#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.01
alarm[0] = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Sonic)
{
if collision_line(x,y,x-120,y,Sonic,0,1)
{
image_xscale = -1
}

if collision_line(x,y,x+15,y,Sonic,0,1)
{
image_xscale = 1
}}

if instance_exists(Luigikid)
{
if collision_line(x,y,x-120,y,Luigikid,0,1)
{
image_xscale = -1
}

if collision_line(x,y,x+15,y,Luigikid,0,1)
{
image_xscale = 1
}}

if instance_exists(IC003969)
{
if collision_line(x,y,x-120,y,IC003969,0,1)
{
image_xscale = -1
}

if collision_line(x,y,x+15,y,IC003969,0,1)
{
image_xscale = 1
}}
#define Collision_Sonic
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha = 1
{
global.hackpage = 6
instance_create(0,0,obj_dialogue_pause)
/*
switch global.lang
{
    case 0:
        show_message("Tails: Please don't leave me Sonic!")
    break;
    case 1:
        show_message("Тейлз: Не оставляй меня, Соник!")
    break;
    case 2:
        show_message("Tails: Perfavore non lasciarmi Sonic!")
    break;
}
*/

}
