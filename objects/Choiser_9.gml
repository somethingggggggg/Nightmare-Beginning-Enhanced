#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
alarm[0] = 300
}

if !instance_exists(TPassed) && instance_exists(KPassed) && instance_exists(EPassed)
{
instance_create(192,256,MS_5)
}

if instance_exists(TPassed) && !instance_exists(KPassed) && instance_exists(EPassed)
{
instance_create(304,256,MS_5)
}

if instance_exists(TPassed) && !instance_exists(KPassed) && !instance_exists(EPassed)
{
instance_create(304,256,MS_5)
}

if instance_exists(TPassed) && instance_exists(KPassed) && !instance_exists(EPassed)
{
instance_create(416,256,MS_5)
}

if !instance_exists(TPassed) && !instance_exists(KPassed) && instance_exists(EPassed)
{
instance_create(192,256,MS_5)
}

if !instance_exists(TPassed) && !instance_exists(KPassed) && !instance_exists(EPassed)
{
instance_create(192,256,MS_5)
}

if !instance_exists(TPassed) && instance_exists(KPassed) && !instance_exists(EPassed)
{
instance_create(192,256,MS_5)
}
if instance_exists(TPassed) && instance_exists(GoI)
{
instance_create(192,272,MS_6)
}
else if instance_exists(TPassed) && !instance_exists(GoI)
{
instance_create(192,272,MS_6)
instance_create(192,197,DT)
}

if instance_exists(KPassed) && instance_exists(GoI_2)
{
instance_create(304,272,MS_6)
}
else if instance_exists(KPassed) && !instance_exists(GoI_2)
{
instance_create(304,272,MS_6)
instance_create(304,193,DK)
}

if instance_exists(EPassed) && instance_exists(GoI_3)
{
instance_create(416,272,MS_6)
}
else if instance_exists(EPassed) && !instance_exists(GoI_3)
{
instance_create(416,272,MS_6)
instance_create(414,194,DE)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=Bad_End_Room(29)
arg1=21
*/
