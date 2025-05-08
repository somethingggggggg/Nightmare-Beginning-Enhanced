#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Act=0
Mode=0
Back=1
CloudX1=0
CloudX2=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Clouds
CloudX1-=0.5
CloudX2-=1
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Back=1{

draw_background_tiled_ext(backWorld1_Back1,(view_xview[0]+CloudX1)/1.2,view_yview[0]-10,1,1,c_white,image_alpha)

draw_background_tiled_ext(backWorld1_Back2,(view_xview[0]+CloudX2)/1.2,view_yview[0]-10,1,1,c_white,image_alpha)

draw_background_tiled_extra(backWorld1_Back3,view_xview[0]/1.2,view_yview[0]+103,1,1,0,c_white,image_alpha,4,1)
/*
draw_background_ext(backWorld1_Back3,(view_xview[0]+512)/1.2,view_yview[0]+103,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back3,(view_xview[0]+(512*2))/1.2,view_yview[0]+103,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back3,(view_xview[0]+(512*3))/1.2,view_yview[0]+103,1,1,0,c_white,image_alpha)
*/
draw_background_ext(backWorld1_Back4,view_xview[0]/1.4,view_yview[0]+40,1,1,0,c_white,image_alpha)

draw_background_tiled_extra(backWorld1_Back5,floor((view_xview[0]+257)/1.4),floor(view_yview[0]+176),1,1,0,c_white,image_alpha,8,1)
/*
draw_background_ext(backWorld1_Back5,(view_xview[0]+257)/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+328))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*2)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*3)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*4)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*5)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*6)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*7)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)
draw_background_ext(backWorld1_Back5,(view_xview[0]+(257+(328*8)))/1.4,view_yview[0]+176,1,1,0,c_white,image_alpha)


*/
}

if Back=2{
draw_background_tiled_ext(background35,view_xview[0]/1.2,view_yview[0]/1.2,1,1,c_white,image_alpha)}
