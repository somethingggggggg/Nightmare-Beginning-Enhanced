#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = view_wview[0]
image_yscale = view_hview[0]
image_alpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if tailscustom.botmode = 4 or tailscustom.botmode = 3 image_alpha += 0.05
else image_alpha -= 0.1
if image_alpha > 1 image_alpha = 1
if image_alpha = 0 instance_destroy()
