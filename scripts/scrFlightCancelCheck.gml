switch global.FlightCancelType
{
    case 0:
    if keyboard_check_pressed(ord("Z")) && keyboard_check(vk_down) return 1;
    else return 0;
    break;
    case 1:
    if keyboard_check_pressed(ord("X")) return 1;
    else return 0;
    break;
    default:
    {
        return 0;
    }
}
