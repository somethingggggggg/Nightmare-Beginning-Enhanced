#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Click_Time = 0
sound_stop(global.S_Save_Select)
sound_loop(global.S_Game_Over)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=1500
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=GOD_Room(35)
arg1=21
*/
#define KeyPress_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Click_Time += 1

if Click_Time < 10
{
instance_create(208,176,BE_2)
view_visible[1] = true
view_visible[0] = false
}

if Click_Time = 10 && (Test.USERNAME = "Luigikid" or Test.USERNAME = "Rene")
{
instance_create(256,144,BE_3)
view_visible[2] = true
view_visible[0] = false
}
else if Click_Time = 10 && (Test.USERNAME != "Luigikid" or Test.USERNAME != "Rene")
{
instance_create(208,176,BE_2)
view_visible[1] = true
view_visible[0] = false
}

if Click_Time > 10
{
instance_create(208,176,BE_2)
view_visible[1] = true
view_visible[0] = false
}
#define KeyRelease_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=BE_2
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_visible[0] = true
view_visible[1] = false
view_visible[2] = false
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=BE_3
invert=0
*/
