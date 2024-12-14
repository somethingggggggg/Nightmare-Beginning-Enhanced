#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.hardmode = 0 instance_destroy()
image_yscale = 0.1316
image_xscale = 0.1316
time = 0
centerX = x
centerY = y
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
time += 1
x = centerX + (sin(time/16) * 121)
y = centerY + (cos(time/16) * 121)
