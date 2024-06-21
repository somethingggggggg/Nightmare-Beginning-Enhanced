#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
eblanremennaia = x
eblanremennaia1 = y
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = (view_xview[0] / 4) + eblanremennaia;
y = (view_yview[0] / 4) + eblanremennaia1;
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
}}

if image_alpha <= 0
{
image_alpha = 0
}
