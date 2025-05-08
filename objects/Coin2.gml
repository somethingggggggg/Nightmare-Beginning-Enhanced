#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0.05
Act=0
Mode=0
Grav=1
vspeed=-4
image_speed=0.3
if global.hardmode=0{global.rings+=1;sprite_index=sprCoin}
if global.hardmode=1{global.rings-=1;sprite_index=sprRedCoin}

visible=1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Grav=1{gravity=0.25}

if Grav=1{
if Act=0{
if place_meeting(x,bbox_bottom-5,Solid_Mask) && vspeed>0{
Act=1;instance_destroy()}}}
