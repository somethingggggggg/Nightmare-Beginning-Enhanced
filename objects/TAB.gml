#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Turn = true
Energy = 100
EggBombTime = false
Twister_mode = false
life = 25
global.complpercent = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Turn = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Tehnical crap
if BL.FF_K = false && BL.FF_E = false
{
    with AI1
    {
        instance_change(Pers1,AI1)
    }
    view_object[0] = Pers1
}

if BL.FF_T = false && BL.FF_E = false
{
    with AI2
    {
        instance_change(Pers2,AI2)
    }
    view_object[0] = Pers2
}

if BL.FF_T = false && BL.FF_K = false
{
    with AI3
    {
        instance_change(Pers3,AI3)
    }
    view_object[0] = Pers3
}

//Following
with AI1
{
    if instance_exists(Pers2)
    {
        if distance_to_object(Pers2) > 300
        {
            if collision_rectangle(x,y+100,x-10000,y-100,Pers2,1,0)
            {
                instance_create(Pers2.x+180,352,AI1)
                HvostBlack.x = AI1.x+10
                HvostBlack.y = AI1.y
                instance_destroy()
            }
            if collision_rectangle(x,y+100,x+10000,y-100,Pers2,1,0)
            {
                instance_create(Pers2.x-180,352,AI1)
                HvostBlack.x = AI1.x-10
                HvostBlack.y = AI1.y
                instance_destroy()
            }
        }
    }
    if instance_exists(Pers3)
    {
        if distance_to_object(Pers3) > 300
        {
            if collision_rectangle(x,y+100,x-10000,y-100,Pers3,1,0)
            {
                instance_create(Pers3.x+180,352,AI1)
                instance_create(Pers3.x+190,352,HvostBlack)
                instance_destroy()
            }
            if collision_rectangle(x,y+100,x+10000,y-100,Pers3,1,0)
            {
                instance_create(Pers3.x-180,352,AI1)
                instance_create(Pers3.x-190,352,HvostBlack)
                instance_destroy()
            }
        }
    }
}

with AI2
{
if instance_exists(Pers1)
{
if distance_to_object(Pers1) > 300
{
if collision_rectangle(x,y+100,x-10000,y-100,Pers1,1,0)
{
instance_create(Pers1.x+220,352,AI2)
instance_destroy()
}
if collision_rectangle(x,y+100,x+10000,y-100,Pers1,1,0)
{
instance_create(Pers1.x-220,352,AI2)
instance_destroy()
}}}

if instance_exists(Pers3)
{
if distance_to_object(Pers3) > 300
{
if collision_rectangle(x,y+100,x-10000,y-100,Pers3,1,0)
{
instance_create(Pers3.x+220,352,AI2)
instance_destroy()
}
if collision_rectangle(x,y+100,x+10000,y-100,Pers3,1,0)
{
instance_create(Pers3.x-220,352,AI2)
instance_destroy()
}}}}

with AI3
{
    if instance_exists(Pers1)
    {
        if distance_to_object(Pers1) > 300
        {
            if collision_rectangle(x,y+100,x-10000,y-100,Pers1,1,0)
            {
                instance_create(Pers1.x+270,336,AI3)
                instance_destroy()
            }
            if collision_rectangle(x,y+100,x+10000,y-100,Pers1,1,0)
            {
                instance_create(Pers1.x-270,336,AI3)
                instance_destroy()
            }
        }
    }
    if instance_exists(Pers2)
    {
        if distance_to_object(Pers2) > 300
        {
            if collision_rectangle(x,y+100,x-10000,y-100,Pers2,1,0)
            {
                instance_create(Pers2.x+270,336,AI3)
                instance_destroy()
            }
            if collision_rectangle(x,y+100,x+10000,y-100,Pers2,1,0)
            {
                instance_create(Pers2.x-270,336,AI3)
                instance_destroy()
            }
        }
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.progressbar = 1
{
draw_set_font(global.dialoguefont)
draw_text_color(view_xview[0] + view_wview[0]/2+60, view_yview[0]+10, global.complpercent,$000075,$000051,$000075,$000051,1)
draw_text_color(view_xview[0] + view_wview[0]/2+80, view_yview[0]+10, '%',$000075,$000051,$000075,$000051,1)
draw_rectangle_color((view_xview[0] + view_wview[0]/2)-50,view_yview[0],view_xview[0] + view_wview[0]/2+50,view_yview[0]+30,$000000,$000000,$000000,$000000,1)
draw_rectangle_color((view_xview[0] + view_wview[0]/2)-50,view_yview[0],(view_xview[0] + view_wview[0]/2)-50 + global.complpercent,view_yview[0]+30,$000075,$000051,$000075,$000051,0)
}
