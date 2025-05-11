//with obj_textpopup instance_destroy()
sound_stop_all()
if file_exists(working_directory+"/"+argument0+".nbesave")
{
    game_load(working_directory+"/"+argument0+".nbesave")
    with instance_create(0,0,obj_textpopup) text = "GAME LOADED"
}
else
{
    with instance_create(0,0,obj_textpopup) text = "SAVE DOESN'T EXIST"
}
//if file_exists(working_directory+"/"+argument0+".nbesave")
//else with instance_create(0,0,obj_textpopup) text = "SAVE FAILED"
