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
    if x < Sonic.x image_xscale = 1
    else image_xscale = -1
}
if global.hackpage = 11
{
    image_alpha -= 0.01
}

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
if image_alpha = 1 && global.pause = 0 && global.hackpage != 11
{
    global.pause = 1
    global.hackpage = 10
    instance_create(0,0,obj_dialogue_pause)
/*
switch global.lang
{
    case 0:
        show_message("Eggman: Seems that you are met with something new. This new - failure...")
    break;
    case 1:
        show_message("Эггман: Похоже ты столкнулся с чем-то новым... С провалом...")
    break;
    case 2:
        show_message("Eggman: Sembra che hai incontrato qualcosa di nuovo. Questo nuovo - fallimento...")
    break;
}
alarm[0] = 1
Sonic.maxSpeed -= 1.
*/
}
