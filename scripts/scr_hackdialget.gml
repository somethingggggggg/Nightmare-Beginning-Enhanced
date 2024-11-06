    switch global.lang
    {
        case 0:
            switch global.hackpage
            {
                case 0:
                    message = "Why did you come here Tails? I told you to stay near the Tornado! Something happened, I don't know what. But someone killed all the animals in the area! We must find the killer! Come on Tails! Don't fall behind!"
                    FalseSonic.sprite_index = sprSonicTurnOut
                    FalseSonic.image_xscale = 1
                    spritedial = sprSW_SonicNormal
                break;
                case 1:
                    global.pause = 0
                    FalseSonic.sprite_index = sprFalseSonic
                    FalseSonic.image_xscale = -1
                    instance_destroy()
                break;
                case 2:
                    message = "There you are Tails!...Listen, I'm a bit tired... Don't let the murderer get away! Go now! I'll catch up with you in a second!"
                    spritedial = sprSW_SonicNormal
                break;
                case 3:
                    global.pause = 0
                    instance_destroy()
                break;
                case 4:
                    message = "Wait... Sonic never gets tired..."
                    spritedial = sprSW_TailsWary
                break;
                case 5:
                    instance_destroy()
                    /*
                    HS_1.sprite_index = sprHS_1_2
                    HS_2.sprite_index = sprHS_2_2
                    HS_4.sprite_index = sprHS_4_2
                    HS_5.sprite_index = sprHS_5_2
                    HS_6.sprite_index = sprHS_6_2
                    Tails.alarm[0] = 540
                    instance_create(9056,400,HS_3)
                    instance_create(3828,384,HS_3)
                    instance_create(2828,144,HS_3)
                    instance_create(2828,384,HS_3)
                    instance_create(3824,256,HS_3)
                    instance_create(4828,256,HS_3)
                    instance_create(5828,256,HS_3)
                    instance_create(6828,256,HS_3)
                    instance_create(7828,256,HS_3)
                    instance_create(8828,256,HS_3)
                    instance_create(9828,256,HS_3)
                    instance_create(10828,256,HS_3)
                    sound_stop(global.S_Forest)
                    sound_play(global.S_Exployed)
                    maxSpeed = 0
                    background_visible[0] = true
                    position_destroy(3632,128)
                    */
                break;
                case 6:
                    message = "Please don't leave me Sonic!"
                    spritedial = sprSW_Exeils
                break;
                case 7:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
                case 8:
                    message = "Stay here buddy - from here there is no escape."
                    spritedial = sprSW_KnucklesDeath
                break;
                case 9:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
                case 10:
                    message = "Seems that you are met with something new. This new - failure..."
                    spritedial = sprSW_EggmanDeath
                break;
                case 11:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
            }
        break;
        case 1:
            switch global.hackpage
            {
                case 0:
                    message = "Что ты здесь делаешь Тейлз!? Я же сказал тебе держатся рядом с 'Торнадо'! Что-то случилось... Кто-то убил всех животных в округе. Мы должны найти убийцу! Живо Тейлз, не отставай!"
                    spritedial = sprSW_SonicNormal
                break;
                case 1:
                    global.pause = 0
                    instance_destroy()
                break;
                case 2:
                    message = "Вот ты где! Слушай, я немного устал, но убийца всё ещё рядом! Не дай ему уйти! Я догоню тебя через несколько секунд"
                    spritedial = sprSW_SonicNormal
                break;
                case 3:
                    global.pause = 0
                    instance_destroy()
                break;
                case 4:
                    message = "Стоп... Соник никогда не устаёт..."
                    spritedial = sprSW_TailsWary
                break;
                case 5:
                    //global.pause = 0
                    /*HS_1.sprite_index = sprHS_1_2
                    HS_2.sprite_index = sprHS_2_2
                    HS_4.sprite_index = sprHS_4_2
                    HS_5.sprite_index = sprHS_5_2
                    HS_6.sprite_index = sprHS_6_2
                    Tails.alarm[0] = 540
                    instance_create(9056,400,HS_3)
                    instance_create(3828,384,HS_3)
                    instance_create(2828,144,HS_3)
                    instance_create(2828,384,HS_3)
                    instance_create(3824,256,HS_3)
                    instance_create(4828,256,HS_3)
                    instance_create(5828,256,HS_3)
                    instance_create(6828,256,HS_3)
                    instance_create(7828,256,HS_3)
                    instance_create(8828,256,HS_3)
                    instance_create(9828,256,HS_3)
                    instance_create(10828,256,HS_3)
                    sound_stop(global.S_Forest)
                    sound_play(global.S_Exployed)
                    maxSpeed = 0
                    background_visible[0] = true
                    position_destroy(3632,128)*/
                    instance_destroy()
                break;
                case 6:
                    message = "Не оставляй меня, Соник!"
                    spritedial = sprSW_Exeils
                break;
                case 7:
                    global.pause = 0
                    Sonic.maxSpeed -= 1.
                    instance_destroy()
                break;
                case 8:
                    message = "Оставайся здесь приятель - отсюда нет выхода"
                    spritedial = sprSW_KnucklesDeath
                break;
                case 9:
                    global.pause = 0
                    Sonic.maxSpeed -= 1.
                    instance_destroy()
                break;
                case 10:
                    message = "Похоже ты столкнулся с чем-то новым... С провалом..."
                    spritedial = sprSW_EggmanDeath
                break;
                case 11:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
            }
        break;
        case 2:
            switch global.hackpage
            {
                case 0:
                    message = "Perche sei venuto qua Tails? Ti ho detto di stare vicino Tornado! Qualcosa e accaduto, non so cosa. Ma qualcuno ha ucciso tutti gli animali nell'area! Dobbiamo trovare l'assassino! Forza Tails! Non rimanere dietro!"
                    spritedial = sprSW_SonicNormal
                break;
                case 1:
                    global.pause = 0
                    instance_destroy()
                break;
                case 2:
                    message = "Eccoti Tails!... Ascolta, sono un poco stanco. Non lasciar scappare l'assassino! Vai adesso! Ti raggiungero in un secondo!"
                    spritedial = sprSW_SonicNormal
                break;
                case 3:
                    global.pause = 0
                    instance_destroy()
                break;
                case 4:
                    message = "Aspetta... Sonic non e mai stanco..."
                    spritedial = sprSW_TailsWary
                break;
                case 5:
                    //global.pause = 0
                    /*HS_1.sprite_index = sprHS_1_2
                    HS_2.sprite_index = sprHS_2_2
                    HS_4.sprite_index = sprHS_4_2
                    HS_5.sprite_index = sprHS_5_2
                    HS_6.sprite_index = sprHS_6_2
                    Tails.alarm[0] = 540
                    instance_create(9056,400,HS_3)
                    instance_create(3828,384,HS_3)
                    instance_create(2828,144,HS_3)
                    instance_create(2828,384,HS_3)
                    instance_create(3824,256,HS_3)
                    instance_create(4828,256,HS_3)
                    instance_create(5828,256,HS_3)
                    instance_create(6828,256,HS_3)
                    instance_create(7828,256,HS_3)
                    instance_create(8828,256,HS_3)
                    instance_create(9828,256,HS_3)
                    instance_create(10828,256,HS_3)
                    sound_stop(global.S_Forest)
                    sound_play(global.S_Exployed)
                    maxSpeed = 0
                    background_visible[0] = true
                    position_destroy(3632,128)*/
                    instance_destroy()
                break;
                case 6:
                    message = "Perfavore non lasciarmi Sonic!"
                    spritedial = sprSW_Exeils
                break;
                case 7:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
                case 8:
                    message = "Rimani qui amico - da qui non si puo scappare"
                    spritedial = sprSW_KnucklesDeath
                break;
                case 9:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
                case 10:
                    message = "Sembra che hai incontrato qualcosa di nuovo. Questo nuovo - fallimento..."
                    spritedial = sprSW_EggmanDeath
                break;
                case 11:
                    global.pause = 0
                    Sonic.maxSpeed -= 1
                    instance_destroy()
                break;
            }
        break;
    }
