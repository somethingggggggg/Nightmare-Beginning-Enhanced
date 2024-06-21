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
instance_destroy()
}}
if image_alpha <= 0
{
image_alpha = 0
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(TailsFatality)
{
if instance_exists(Tails3) && Tails3.image_xscale = 1
{
image_xscale = 1
move_snap(Tails3.x-5,Tails3.y+4)
}

if instance_exists(Tails3) && Tails3.image_xscale = -1
{
image_xscale = -1
move_snap(Tails3.x+5,Tails3.y+4)
}

if Tails3.sprite_index = sprHorrorTailsWalk or Tails3.sprite_index = sprHorrorTailsRun or Tails3.sprite_index = sprHorrorTailsJump or Tails3.sprite_index = sprTailsFly or Tails3.sprite_index = sprTailsFlyTired
{
image_alpha = 0
}

if Tails3.Hide = true && (Tails3.sprite_index != sprHorrorTailsWalk && Tails3.sprite_index != sprHorrorTailsRun && Tails3.sprite_index != sprHorrorTailsJump && Tails3.sprite_index != sprTailsFly && Tails3.sprite_index != sprTailsFlyTired)
{
image_alpha = 0.4
}

if Tails3.Hide = false && (Tails3.sprite_index != sprHorrorTailsWalk && Tails3.sprite_index != sprHorrorTailsRun && Tails3.sprite_index != sprHorrorTailsJump && Tails3.sprite_index != sprTailsFly && Tails3.sprite_index != sprTailsFlyTired)
{
image_alpha = 1
}

depth = Tails3.depth+1
}
if instance_exists(TailsFatality)
{
if TailsFatality.Appear = true
{
instance_destroy()
}}
if instance_exists(TailsFatality)
{
if TailsFatality.Dissappear = true
{
image_alpha -=0.01
}}

if image_alpha <= 0
{
image_alpha = 0
}
