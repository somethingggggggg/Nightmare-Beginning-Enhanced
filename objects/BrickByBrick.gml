#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
solid = 1
mask_index = sprBrickByBrick
Act = 0
Mode = 0
Unsolid_Top = 0
image_speed=0.14
Unsolid = 0
instance_create(x, y, MaskOutUp)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers)
{
if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,MaskOutUp,0,0)
{
Unsolid_Top=1
}


if Unsolid_Top=1
{
if collision_rectangle(x+20000,bbox_top-40,x-20000,bbox_top-100000,AllPers,1,0)
{
mask_index=sprBrickByBrick
}
if collision_rectangle(x+20000,bbox_top+30,x-20000,bbox_bottom+100000,AllPers,1,0)
{
mask_index=sprBrickByBrick0
}}}
