if (keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down)) != 0
{
    global.option -= (keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down))
    sound_play(global.S_MS_Move)
    global.option = (global.option+ds_list_size(global.mod_list)+1) mod (ds_list_size(global.mod_list)+1)
}
if keyboard_check_pressed(vk_enter)
{
    if global.option = 0
    {
        global.menustate = 0
        global.option = 0
        draw_set_halign(fa_left)
        //ds_list_destroy(fuckarr)
    }
    else
    {
        var main_file, mod_dir, current_mod, create_pre_code;
        current_mod = ds_list_find_value(global.mod_list,global.option-1);
        mod_dir = working_directory+"\mods\"+current_mod
        main_file = mod_dir+"\init.gml"
        if file_exists(main_file)
        {
            file_name = file_find_first(working_directory+"\mods\"+current_mod+"\object\*.*",fa_directory);
            while (file_name != "")
            {
                var __mod_obj;
                __mod_obj = object_add()
                create_pre_code = "mod_dir = '"+string(working_directory)+"\mods\"+string(current_mod)+"';sprite_index = sprite796;obj_name = '"+string(file_name)+"';"
                ds_map_add(global.mod_objects,file_name,__mod_obj)
                object_event_add(__mod_obj,ev_create,0,create_pre_code)
                if file_exists(mod_dir+"\object\"+file_name+"\create.gml") object_event_add(__mod_obj,ev_create,0,create_pre_code+"execute_file(mod_dir+'\object\'+obj_name+'\create.gml')")
                if file_exists(mod_dir+"\object\"+file_name+"\step.gml") object_event_add(__mod_obj,ev_step,ev_step_normal,"execute_file(mod_dir+'\object\'+obj_name+'\step.gml')")
                if file_exists(mod_dir+"\object\"+file_name+"\stepbegin.gml") object_event_add(__mod_obj,ev_step,ev_step_begin,"execute_file(mod_dir+'\object\'+obj_name+'\stepbegin.gml')")
                if file_exists(mod_dir+"\object\"+file_name+"\stepend.gml") object_event_add(__mod_obj,ev_step,ev_step_end,"execute_file(mod_dir+'\object\'+obj_name+'\stepend.gml')")
                if file_exists(mod_dir+"\object\"+file_name+"\draw.gml") object_event_add(__mod_obj,ev_draw,0,"execute_file(mod_dir+'\object\'+obj_name+'\draw.gml')")
                if file_exists(mod_dir+"\object\"+file_name+"\roomstart.gml") object_event_add(__mod_obj,ev_room_start,0,"execute_file(mod_dir+'\object\'+obj_name+'\roomstart.gml')")
                if file_exists(mod_dir+"\object\"+file_name+"\roomend.gml") object_event_add(__mod_obj,ev_room_end,0,"execute_file(mod_dir+'\object\'+obj_name+'\roomend.gml')")
                else object_event_add(__mod_obj,ev_draw,0,"draw_self()")
                file_name = file_find_next()
            }
            file_find_close();
            /*
            if directory_exists(mod_dir+"\object")
            {
                global.custom_objects[global.option-1] = object_add()
                object_event_add(global.custom_objects[global.option-1],ev_create,0,create_pre_code)
                if file_exists(mod_dir+"\object\create.gml") object_event_add(global.custom_objects[global.option-1],ev_create,0,create_pre_code+";execute_file(mod_dir+'\object\create.gml')")
                if file_exists(mod_dir+"\object\step.gml") object_event_add(global.custom_objects[global.option-1],ev_step,ev_step_normal,"execute_file(mod_dir+'\object\step.gml')")
                if file_exists(mod_dir+"\object\stepbegin.gml") object_event_add(global.custom_objects[global.option-1],ev_step,ev_step_begin,"execute_file(mod_dir+'\object\stepbegin.gml')")
                if file_exists(mod_dir+"\object\stepend.gml") object_event_add(global.custom_objects[global.option-1],ev_step,ev_step_end,"execute_file(mod_dir+'\object\stepend.gml')")
                if file_exists(mod_dir+"\object\draw.gml") object_event_add(global.custom_objects[global.option-1],ev_draw,0,"execute_file(mod_dir+'\object\draw.gml')")
                else object_event_add(global.custom_objects[global.option-1],ev_draw,0,"draw_self()")
            }*/
            execute_file(main_file,global.option-1)
            with instance_create(0,0,obj_textpopup) text = "MOD LOADED"
        }
        else
        {
            instance_create(0,0,obj_textpopup) text = "MOD LOAD FAILED"
        }
    }
}
scroll = -((((global.option) * 10)+abs(scroll))/2)
