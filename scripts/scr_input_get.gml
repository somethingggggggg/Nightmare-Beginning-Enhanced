var key, joy;
_key = ds_map_find_value(global.key_button_binds,argument0)
_joy = ds_map_find_value(global.joy_button_binds,argument0)
switch argument1
{
    case "pressed": return keyboard_check_pressed(_key) or joystick_check_button_pressed(0,_joy) break;
    case "check": return keyboard_check(_key) or joystick_check_button(0,_joy) break;
    case "released": return keyboard_check_released(_key) or joystick_check_button_released(0,_joy) break;
}
