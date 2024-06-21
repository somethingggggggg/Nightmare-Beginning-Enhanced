#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index = sprHS_Mask
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
}}

if image_alpha <= 0
{
image_alpha = 0
}
#define Collision_Warn6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Collision_HSE_Fall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AI_1)
{
if AI_1.Alarm = true
{
solid = 0
}}
