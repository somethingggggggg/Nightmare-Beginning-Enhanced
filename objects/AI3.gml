#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Eggman_Plot = false
{
BL.FF_E = false
instance_destroy()
}
instance_activate_object(AI3)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(global.S_EGG_Shield)
with EnergyShieldFF
{
instance_destroy()
}
image_alpha = 1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Energy = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
//Gravity
if place_meeting(x, y+vspeed+1, FF_Ground) && vspeed >= 0
{
   ground = true;
   gravity = 0;
if vspeed > 8
   vspeed = 8;
}
else
{
  ground = false;
   gravity = 0.25;
}

if TAB.life = 0
{
    BL.FF_E = false
    BL.Egg_Death = true
    instance_deactivate_object(AI3)
}

//Energy
if collision_line(x,y+10,x+60,y+10,Ex11,0,0) && image_alpha = 1 && TAB.Energy > 0
{
    image_alpha = 0.99
    instance_create(x,y,EnergyShieldFF)
    sound_loop(global.S_EGG_Shield)
    alarm[0] = 100
    alarm[1] = 360
}

if collision_line(x,y+10,x-60,y+10,Ex11,0,0) && image_alpha = 1 && TAB.Energy > 0
{
    image_alpha = 0.99
    instance_create(x,y,EnergyShieldFF)
    sound_loop(global.S_EGG_Shield)
    alarm[0] = 120
    alarm[1] = 500
}

//Charge
if TAB.Energy > 0
{
    if instance_exists(EnergyShieldFF)
    {
        TAB.Energy -= 1
    }
}

if !instance_exists(EnergyShieldFF) && TAB.Energy < 100
{
    TAB.Energy += 0.2
}

if TAB.Energy <= 0
{
    with EnergyShieldFF
    {
        instance_destroy();
    }
    image_alpha = 1
    sound_stop(global.S_EGG_Shield)
}
#define Collision_FF_Ground
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Collision_Ex11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TAB.life -= 1
