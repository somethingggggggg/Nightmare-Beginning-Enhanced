    switch global.dialoguepage
    {
        case 0:
            message = "W... Who are you?"
            dialsprite = sprSW_TailsShocked
        break;
        case 1:
            sound_play(global.S_CYFTS_voiceline)
            message = "#TAILS DOLL#MODEL A001#COPYRIGHT IVO INDUSTRIES"
            dialsprite = sprSW_Tailsdoll
        break;
        case 2:
            message = "CURRENT MISSION: TERMINATE#MILES TAILS PROWER"
            dialsprite = sprSW_Tailsdoll
        break;
        case 3:
            message = "oh no"
            dialsprite = sprSW_TailsShocked
        break;
        case 4:
            instance_create(x,y,backmab)
            tailscustom.vspeed = -7
            tailscustom.sprite_index = sprTailsJump;
            tailscustom.botmode = 3
            with TailsDollBoss
            {
                hspeed = -9.5
                vspeed = 0.1875
            }
            global.vel = -4
            instance_destroy()
        break;
        case 5:
            message = "TERMINATE#TERMINATE#TERMINATE_"
            dialsprite = sprSW_Tailsdoll
        break;
        case 6:
            sound_loop(global.S_Final_Boss_RG)
            TailsDollBoss.fight = 1
            tailscustom.botmode = 0
            instance_destroy()
        break;
    }
