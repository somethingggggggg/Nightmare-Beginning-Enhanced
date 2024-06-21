#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Knuckles_Gotcha = true
{
background_visible[0] = false
background_visible[1] = true
view_object[0] = Knuckles
instance_create(x,y,Knuckles)
instance_create(x,y,Sec_Count)
instance_create(x,y,Min_Count)
instance_create(x,y,Live_Count)
instance_create(x,y,Score_Count)
instance_create(2240,16,Solid)
instance_create(1792,224,Solid)
instance_create(2048,752,Solid)
instance_destroy()
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=ScrapGround
invert=0
arg0=sprScrapGroundBlood
arg1=0
arg2=1
*/
