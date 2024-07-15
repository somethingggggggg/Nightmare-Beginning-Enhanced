#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
displacement=shDisplacement()

tex_water=background_get_texture(background33)
tex_displ=background_get_texture(background35)

time=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
time+=1

//set up shader
shader_pixel_set(displacement)
shader_pixel_uniform_f("t",time/2000)

texture_set_stage("displacement",tex_displ)
texture_set_stage_repeat("displacement",1,1,0)
texture_set_stage_interpolation("displacement",1)

//draw the effect
h=1/16 //1/16
w=1/16 //h*(room_width/room_height)

draw_quad(0,0,room_width,room_height,tex_water,0,0,w,h)

//cleanup
shader_reset()
