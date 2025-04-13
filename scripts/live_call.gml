/// (script, ...args)
if (!ds_grid_get(global.__live_script_has_event, argument[0], 0)) return false;

// store args
var _prev_argument_count; _prev_argument_count = global.__live_argument_count;
global.__live_argument_count = argument_count - 1;
var _prev_argument;
var i; i = 0;
repeat (argument_count - 1) {
    _prev_argument[i] = global.__live_argument[i];
    global.__live_argument[i] = argument[i + 1];
    i += 1;
}

//
live_result = 0;
event_perform_object(global.__live_script_object, ev_alarm, argument[0]);

// restore args
global.__live_argument_count = _prev_argument_count;
i = 0;
repeat (_prev_argument_count) {
    global.__live_argument[i] = _prev_argument[i];
    i += 1;
}
return true;
