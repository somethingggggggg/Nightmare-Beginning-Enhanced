#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.15
hspeed = 5
alarm[0] = 180

if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false
{
sprite_index = sprTailsWalkBlack
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
sprite_index = sprKnucklesWalkBlack
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
y=y-16
sprite_index = sprEggmanWalkBlack
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed =0
instance_create(x,235,Fog_Exe2)
#define Collision_Fog_Exe2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false
{
sprite_index = sprDFTailsDeath
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
sprite_index = sprDFKnucklesDeath
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
sprite_index = sprDFEggmanDeath
}
