    switch global.dialoguepage
    {
        case 0:
            message = "W... Who are you?"
            dialsprite = sprSW_TailsShocked
        break;
        case 1:
            message = "#TAILS DOLL#MODEL A001#COPYRIGHT IVO INDUSTRIES"
            dialsprite = sprSW_Tailsdoll
        break;
        case 2:
            tailscustom.botmode = 0
            instance_destroy()
        break;
    }
