with obj_textpopup instance_destroy()
game_save(working_directory+"/"+argument0+".nbesave")
if file_exists(working_directory+"/"+argument0+".nbesave") with instance_create(0,0,obj_textpopup) text = "GAME SAVED"
else with instance_create(0,0,obj_textpopup) text = "SAVE FAILED"
