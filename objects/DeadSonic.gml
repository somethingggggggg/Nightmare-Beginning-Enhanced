#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
