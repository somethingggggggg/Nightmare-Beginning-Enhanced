#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.1
ground = false;
acc = 0.066875;
maxSpeed = 7
canSpriteChange = true
SleepTime = true
SleepTimer = 150
Phase_1 = true
Phase_2 = false
AwakeTime = 300
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(HSE_Walker) && !instance_exists(HSE_Fall)
{
TeleportRing.sprite_index = sprTeleportRing
}

//Gravity
if place_meeting(x, y+vspeed+1, HS_1G) && vspeed >= 0
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

//Watched
if image_alpha = 1
{
    if Phase_1 = true
    {
        if instance_exists(Tails3)
        {
            if !instance_exists(HSE_Watch)
            {
                if collision_circle(x,y,300,Tails3,1,0) && (sound_isplaying(global.S_BushesSound) or SleepTime = false)
                {
                    if collision_rectangle(x-10,y+50,x-500,y-50,Tails3,1,0)
                    {
                        sprite_index = sprHSE_SleepL
                    }
                    if collision_rectangle(x+10,y+50,x+500,y-50,Tails3,1,0)
                    {
                        sprite_index = sprHSE_SleepR
                    }
                    if collision_rectangle(x-20,y,x+20,y-100,Tails3,1,0)
                    {
                        sprite_index = sprHSE_SleepUp
                    }
                }
            }

//WakeUp
if collision_circle(x,y,300,Tails3,1,0) && Tails3.Hide = false
{
    SleepTimer -= 1
}

if (!collision_circle(x,y,300,Tails3,1,0) or Tails3.Hide = true) && SleepTimer < 150
{
    SleepTimer += 1
}

if SleepTimer <= 0
{
    SleepTime = false
}

//Asleep
if (!collision_circle(x,y,300,Tails3,1,0) or Tails3.Hide = true) && SleepTime = false && SleepTimer = 150
{
    SleepTime = true
    sprite_index = sprHSE_Sleep
}

//AwakeTime
if SleepTime = false && collision_circle(x,y,800,Tails3,1,0) && Tails3.Hide = false
{
AwakeTime -= 1
}

if SleepTime = false && (!collision_circle(x,y,800,Tails3,1,0) or Tails3.Hide = true) && AwakeTime < 300
{
AwakeTime += 1
}

if AwakeTime <= 0
{
Phase_2 = true
}
}

if Phase_2 = true
{
with HSE_GA
{
image_alpha = 0
}
instance_create(x,y-10,HSE_Walker)
}
}
}
#define Collision_Solid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -image_xscale
#define Collision_HS_1G
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_contact_solid(270, 4);
vspeed = 0;
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if SleepTime = false
{
with HSE_GA
{
image_alpha = 0
}
if !instance_exists(HSE_Walker)
{
instance_create(x,y-10,HSE_Walker)
}}
