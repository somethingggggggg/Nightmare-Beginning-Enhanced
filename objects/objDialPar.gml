#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dialogue[0,0] = ""
dialogue[0,1] = ""
dialogue[0,2] = ""
sprite[0] = ""
dialogueLength = 1
drawText = ""
dialTime = 0
page = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if scr_input_get("enter","pressed")
{
    page += 1
    dialTime = 0
    if page > dialogueLength-1
    {
        instance_destroy()
        exit;
    }
}

dialTime += 1
dialTime = min(string_length(dialogue[page,global.lang]),dialTime)
drawText = string_copy(dialogue[page,global.lang],1,dialTime)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.dialoguefont)
draw_sprite(sprite[page],0,view_xview[view_current],view_yview[view_current])
draw_text_ext_color(view_xview[view_current]+100, view_yview[view_current], drawText/*dialogue[page,global.lang]*/,16,view_wview[view_current]-100,$00ffff,$00ffff,$00ffff,$005555,1)
