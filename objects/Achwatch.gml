#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ach1 = 0
ach2 = 0
ach3 = 0
    ini_open("save.ini")
    ach1 = ini_read_real('Achivements','ach1',0)
    ach2 = ini_read_real('Achivements','ach2',0)
    ach3 = ini_read_real('Achivements','ach3',0)
ini_open("save.ini")
timer = 0
move = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room = 5
{
    if ach1 = 0
    {
        timer = 500
        move = 0
        ini_open("save.ini")
        ach1 = 1
        ini_write_real('Achivements','ach1',1)
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer > 0
{
if timer > 200
{
draw_sprite(sprFEX,0,view_xview[0]+view_hview[0]-60, view_yview[0]+view_wview[0]-60)
timer -= 1
}
else
{
    draw_sprite(sprFEX,0,view_xview[0]+view_hview[0]-60, view_yview[0]+view_wview[0]-60-move)
    move -= 1
    timer -= 1
}
}
