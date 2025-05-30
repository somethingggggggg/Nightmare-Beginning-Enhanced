switch global.FlightCancelType
{
    case 0: return (scr_input_get("jump","pressed") && scr_input_dir_get("down","check")) break;
    case 1: return scr_input_get("flightcancel","pressed") break;
    default: return 0;
}
