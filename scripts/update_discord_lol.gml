if global.DCRP_enabled = 0 exit;
//this is shit and I should redo it with arrays
imagineavariable = 0
switch room
{
    case 0:
        imagineavariable = "IN MAIN MENU"
    break;
    case 8:
        imagineavariable = "HILL"
    break;
    case 11:
        imagineavariable = "HIDE AND SEEK"
    break;
    case 40:
        imagineavariable = "HIDE AND SEEK ACT 2"
    break;
    case 32:
        imagineavariable = "FATAL FOG"
    break;
    case 70:
        imagineavariable = "SUICIDE HILL"
    break;
    case 26:
        imagineavariable = "..."
    break;
    case 20:
        imagineavariable = "YOU CAN'T RUN"
    break;
    case 66:
        imagineavariable = "DESTROYED MIND"
    break;
}
if global.hardmode = 0 discord_update_presence(imagineavariable,"An experimental NB mod",'sprfex','sprfex')
else discord_update_presence(imagineavariable,"HARD MODE EXPERIMENTAL",'sprfex','sprfex')
