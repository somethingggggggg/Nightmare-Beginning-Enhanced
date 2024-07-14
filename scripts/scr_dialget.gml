    switch global.dialoguepage
    {
        case 0:
            message = "W... Who are you?"
            dialsprite = sprSW_TailsShocked
        break;
        case 1:
            message = "W... Who are you?"
            dialsprite = sprSW_TailsShocked
        break;
        case 2:
            tailscustom.botmode = 0
            instance_destroy()
        break;
    }
