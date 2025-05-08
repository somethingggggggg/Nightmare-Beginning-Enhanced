#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Move=1
Stage=0
view_object[0]=Cam
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(AllPers)
{

P=AllPers


if Move=1
{
if Stage=0
{
if P.x>160 && P.x<6640-160
{
if x!=P.x{x=P.x}
hspeed=P.hspeed
}
else
{
hspeed=0
}
y=300;vspeed=0
}


if Stage=1
{
if P.x>4737+170 && P.x<5274-160
{
if x!=P.x{x=P.x}
hspeed=P.hspeed
}
else
{
hspeed=0
}
y=750
}
}}




if instance_exists(Debug_Thing)
{

if Move=1
{
if Stage=0
{
if Debug_Thing.x>160 && Debug_Thing.x<6640-160
{
if x!=Debug_Thing.x{x=Debug_Thing.x}
hspeed=Debug_Thing.hspeed
}
else
{
hspeed=0
}
y=300;vspeed=0
}


if Stage=1
{
if Debug_Thing.x>4737+170 && Debug_Thing.x<5274-160
{
if x!=Debug_Thing.x{x=Debug_Thing.x}
hspeed=Debug_Thing.hspeed
}
else
{
hspeed=0
}
y=750
}}}

if !instance_exists(AllPers) && !instance_exists(Debug_Thing)
{
hspeed=0
vspeed=0
}
