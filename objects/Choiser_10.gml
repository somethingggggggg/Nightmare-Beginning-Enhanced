#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = false
{
alarm[0] = 300
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = false
{
instance_create(192,256,MS_7)
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
instance_create(304,256,MS_7)
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(304,256,MS_7)
}

if BL.Tails_Plot = false && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
instance_create(416,256,MS_7)
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = false
{
instance_create(192,256,MS_7)
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = true && BL.Eggman_Plot = true
{
instance_create(192,256,MS_7)
}

if BL.Tails_Plot = true && BL.Knuckles_Plot = false && BL.Eggman_Plot = true
{
instance_create(192,256,MS_7)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=Bad_End_Room(29)
arg1=21
*/
