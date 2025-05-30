var key, joy;
_key = ds_map_find_value(global.key_button_binds,argument0)
//_joy = ds_map_find_value(global.joy_button_binds,argument0)
switch argument0
{
    case "left": _joy = joy_left; break;
    case "right": _joy = joy_right; break;
    case "up": _joy = joy_up; break;
    case "down": _joy = joy_down; break;
}
switch argument1
{
    case "pressed": return keyboard_check_pressed(_key) or global.dpad_pressed[_joy] break;
    case "check": return keyboard_check(_key) or global.dpad_check[_joy] break;
    case "released": return keyboard_check_released(_key) or global.dpad_released[_joy] break;
}
