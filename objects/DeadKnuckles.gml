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
global.hackpage = 8
instance_create(0,0,obj_dialogue_pause)
/*
switch global.lang
{
    case 0:
        show_message("Knuckles: Stay here buddy - from here there is no escape.")
    break;
    case 1:
        show_message("Наклз: Оставайся здесь приятель - отсюда нет выхода")
    break;
    case 2:
        show_message("Knuckels: Rimani qui amico - da qui non si puo scappare")
    break;
}
alarm[0] = 1
Sonic.maxSpeed -= 1.
*/
}
