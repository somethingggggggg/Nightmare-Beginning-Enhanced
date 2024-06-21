#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
transition_kind = 21
transition_steps = 180
room_goto(83)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Sonic)
{
if BL.T_Ring = true && BL.K_Ring = true && BL.E_Ring = true
{
sprite_index = sprRingStructionFull
image_speed = 0.15
}

if BL.T_Ring = false && BL.K_Ring = false && BL.E_Ring = false
{
image_speed = 0
image_index = 0
}

if BL.T_Ring = true && BL.K_Ring = false && BL.E_Ring = false
{
image_speed = 0
image_index = 1
}

if BL.T_Ring = false && BL.K_Ring = false && BL.E_Ring = true
{
image_speed = 0
image_index = 2
}

if BL.T_Ring = false && BL.K_Ring = true && BL.E_Ring = false
{
image_speed = 0
image_index = 3
}

if BL.T_Ring = true && BL.K_Ring = false && BL.E_Ring = true
{
image_speed = 0
image_index = 4
}

if BL.T_Ring = false && BL.K_Ring = true && BL.E_Ring = true
{
image_speed = 0
image_index = 5
}

if BL.T_Ring = true && BL.K_Ring = true && BL.E_Ring = false
{
image_speed = 0
image_index = 6
}}

if sprite_index = sprRingStructionFullOut && image_index > 8
{
image_speed = 0
image_index = 8
alarm[0] = 120
}
