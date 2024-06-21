#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=300
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Test.USERNAME = "Luigikid" or Test.USERNAME = "Rene"
{
instance_create(160,128,Note9_31)
}

if Test.USERNAME = "Xacxon" or Test.USERNAME = "����" or Test.USERNAME = "ic003969" or Test.USERNAME = "Icy Cat"
{
instance_create(160,128,Note9_32)
}

if Test.USERNAME != "Xacxon" && Test.USERNAME != "����" && Test.USERNAME != "ic003969" && Test.USERNAME != "Icy Cat" && Test.USERNAME != "Luigikid" && Test.USERNAME != "Rene"
{
instance_create(160,128,Note9_3)
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
