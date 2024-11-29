#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Page = 0
V_1 = true
V_2 = true
V_3 = true
V_4 = true
V_5 = true
V_6 = true
V_7 = true
V_8 = true
V_9 = true
jink = 0
alarm[2] = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Page +=1
jink += 1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Page +=1
jink -= 1
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scr_voicethefucker()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Page = 2
{
instance_destroy()
}

if Page = 4
{
CutTails.alarm[1] = 1
instance_destroy()
}

if Page = 20
{
CutTails.alarm[2] = 1
instance_destroy()
}

if Page = 26
{
CutTails.alarm[3] = 1
instance_destroy()
}

if Page = 40
{
CutTails.alarm[2] = 1
instance_destroy()
}

if Page = 47
{
CutTails.alarm[3] = 1
instance_destroy()
}

if Page = 60
{
CutTails.alarm[2] = 1
instance_destroy()
}

if Page = 62
{
CutTails.alarm[5] = 1
instance_destroy()
}

if Page = 69
{
CutTails.alarm[3] = 1
instance_destroy()
}

if Page = 82
{
CutTails.alarm[2] = 1
instance_destroy()
}

if Page = 90
{
CutTails.alarm[3] = 1
instance_destroy()
}

if Page = 99
{
ES_Creeps.alarm[1] = 1
ES_Creeps.alarm[2] = 180
instance_destroy()
}

if Page = 105
{
SonicStop.alarm[4] = 1
instance_destroy()
}

if Page = 107
{
instance_destroy()
}

if Page = 110
{
Knuckles.Act = 1
instance_destroy()
}

if Page = 112
{
EGGBot.Act = 0
instance_destroy()
}

if Page = 115
{
EGGBot.Act = 3
instance_destroy()
}

if Page = 117
{
EGGBot.Act = 14
instance_destroy()
}

if Page = 121
{
FinalCam.alarm[2] = 1
instance_destroy()
}

if Page = 123
{
FinalCam.alarm[4] = 1
instance_destroy()
}

if Page = 127
{
HP_ExeWeak.alarm[0] = 1
instance_destroy()
}

if Page = 129
{
ReallyDedSonic.alarm[1] = 1
instance_destroy()
}

if Page = 131
{
    ReallyDedSonic2.alarm[4] = 1
    instance_destroy()
}

if Page = 137
{
    if PersonalChoiser.Tails_Pers = true
    {
        DF_Tails.alarm[1] = 60
    }
    if PersonalChoiser.Knuckles_Pers = true
    {
        DF_Knuckles.alarm[1] = 60
    }
    if PersonalChoiser.Eggman_Pers = true
    {
        DF_Eggman.alarm[1] = 60
    }
    instance_destroy()
}

if Page = 142
{
    DF_Exe.alarm[0] = 1
    instance_destroy()
}

if Page = 149
{
    DF_Tails.alarm[7] = 1
    instance_destroy()
}

if Page = 152
{
    DF_Knuckles.alarm[7] = 60
    instance_destroy()
}

if Page = 156
{
    DF_Knuckles.alarm[10] = 1
    instance_destroy()
}

if Page = 159
{
    DF_Head.alarm[2] = 1
    view_object[0] = false
    instance_destroy()
}

if Page = 161
{
    DF_Eggman.alarm[8] = 1
    instance_destroy()
}

if Page = 171
{
    sound_play(global.S_CrackNeck)
    room_goto(81)
    instance_destroy()
}

if Page = 177
{
    RiseSonic0.alarm[5] = 1
    instance_destroy()
}

if Page = 179
{
    RiseSonic0.alarm[7] = 1
    instance_destroy()
}

if Page = 183
{
instance_destroy()
}

if Page = 187
{
RiseExe0.alarm[4] = 120
instance_destroy()
}

if Page = 189
{
AEC_Metal.alarm[3] = 1
instance_destroy()
}

if Page = 203
{
instance_destroy()
}

//Action
if keyboard_check_pressed(vk_enter) && jink = 0
{
    Page += 1
    scr_voicethefucker()
}

//jink
if jink = 1
{
jink = 2
alarm[0] = 300
}

if jink = 3
{
jink = 4
alarm[0] = 250
}

if jink = 5
{
jink = 6
alarm[0] = 180
}

if jink = 7
{
jink = 8
alarm[0] = 120
}

if jink = 9
{
jink = 10
alarm[0] = 300
}

if jink = 11
{
jink = 12
alarm[0] = 320
}

if jink = 13
{
jink = 14
alarm[0] = 300
}

if jink = 15
{
jink = 16
alarm[0] = 240
}

if jink = 17
{
jink = 18
alarm[0] = 120
}




if jink = 19
{
jink = 20
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 21
{
jink = 22
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 23
{
jink = 24
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 25
{
jink = 26
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 27
{
jink = 28
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 29
{
jink = 30
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 31
{
jink = 32
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 33
{
jink = 34
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 35
{
jink = 36
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 37
{
jink = 38
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 39
{
jink = 40
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 41
{
jink = 42
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}

if jink = 43
{
jink = 44
if !instance_exists(Trio_Away)
{
alarm[0] = 480
}
else
{
alarm[0] = 360
}}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.dialoguefont)
if global.lang = 0
{
if Page = 1
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Back to green hill again...Last time I was here was when Sonic went off for his first adventure, I wonder why he called me here though.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//All
if Page = 3
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что это за место?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 5
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Наклз! Эггман! Как я рад вас видеть! Что-то не так с Соником: он пытался...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 6
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Убить тебя? Не удивляйся: со мной он тоже пытался разделаться! Что ты сделал с Соником, Яйцеголовый?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 7
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Меня зовут Эггман! И я понятия не имею что случилось с этим синим выскочкой!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 8
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Моя цель - роботизация, не убийство! Я видел как Соник убивал животных. Но я чуял, что он хочет добраться до меня!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 9
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я приказал бадникам задержать его, а сам ушел потайным путем. У меня было подозрение, что они не остановят ежа.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 10
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как оказалось, я был прав.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 11
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже, теперь синий может управлять чужим сознанием! Было ощущение, что он хотел заставить меня сойти с ума!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 12
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Согласен! От этого Соника веет какой-то странной аурой.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 13
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Аурой? Точно! Возможно я смогу узнать, что случилось с нашим другом!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 14
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 15
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Недавно нашел изумруд хаоса! Он поможет понять, что творится с этим колючим шаром!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 16
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И что ты можешь сделать?! У нас нет механизмов, способных вычислить состояние ежа!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 17
{
CutTails.image_xscale = -1
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Боюсь он прав, Наклз.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 18
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не забывайте, что я -хранитель Мастер-изумруда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 19
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И если я могу управлять его энергией, то неужели я не смогу использовать обычный камень!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 21
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А вот и виновник торжества! Нужно уходить.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 22
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не нужно. Мы должны остаться! Если подпустить его ближе, изумруд сможет уловить энергетику! ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 23
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Но Наклз! Что мешает Сонику убить нас на расстоянии, с помощью контроля разума?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 24
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Все тот же изумруд. Это конечно не супер-форма, но он способен блокировать ментальные атаки!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 25
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Рассредоточимся!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Tails_Death
if Page = 27
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Наклз?! Не думал, что скажу это, но я рад тебя видеть!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 28
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не пытайся меня запутать, ряженое яйцо! Что происходит?! Что ты сделал с Соником!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 29
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Меня зовут Эггман! И я понятия не имею что случилось с этим синим выскочкой!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 30
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Моя цель - роботизация, не убийство! Я видел как Соник убивал животных. Но я чуял, что он хочет добраться до меня!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 31
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я приказал бадникам задержать его, а сам ушел потайным путем. У меня было подозрение, что они не остановят ежа.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 32
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как оказалось, я был прав.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 33
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже, теперь синий может управлять чужим сознанием! Было ощущение, что он хотел заставить меня сойти с ума!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 34
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Есть идея! Возможно я смогу узнать, что случилось с нашим другом!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 35
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Твоим другом...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 36
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Недавно нашел изумруд хаоса! Он поможет понять, что творится с этим колючим шаром!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 37
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И что ты можешь сделать?! У нас нет механизмов, способных вычислить состояние ежа!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}


if Page = 38
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не забывай, что я -хранитель Мастер-изумруда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 39
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И если я могу управлять его энергией, то неужели я не смогу использовать обычный камень!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 42
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А вот и виновник торжества! Нужно уходить.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 43
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не нужно. Мы должны остаться! Если подпустить его ближе, изумруд сможет уловить энергетику! ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 44
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ты идиот?! Что мешает Сонику убить нас на расстоянии, с помощью контроля разума?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 45
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Все тот же изумруд. Это конечно не супер-форма, но он способен блокировать ментальные атаки!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 46
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Рассредоточимся!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Knuckles_Death

if Page = 48
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Эггман! Что ты здесь делаешь?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 49
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "То же, что и ты, я полагаю...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 50
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Значит Соник напал и на тебя?! Это ужасно! Что с ним случилось?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 51
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ну, в самом деле он на меня не нападал. Пытался, но я успел сбежать.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 52
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Еще, весьма странно то, что мы оба пришли сюда, хотя я даже не знал об этом месте!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 53
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Точно! Я тоже здесь впервые! У меня было ощущение, что что-то вело меня сюда.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 54
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Или кто-то... Я подозреваю, что это был еж. У меня  постоянное ощущение, что он видит меня!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 55
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Согласен! Как думаешь: можно ли как-то сделать Соника снова нормальным?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 56
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хмм... Если бы я смог вычислить его состояние в данный момент... Но у меня нет нужных приборов... ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 57
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хотя... Возможно у моего коммуникатора еще осталась энергия. Я мог бы вызвать Метал-Соника!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 58
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Это может сработать! Метал имеет связь со своим прототипом, значит он может просканировать его!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 59
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И заодно помочь нам выжить!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 61
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А вот и наш сумасшедший! Ну что Тейлз: сейчас или никогда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 64
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ура доктор: у вас получилось!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 65
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Осталось только задать ему программу и... Готово!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 66
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Отлично! Надеюсь с Наклзом все в порядке!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 67
{
CutEggman.image_xscale = -1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Знаешь Тейлз: Мне кажется, что Наклза больше нет...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 68
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Eggman Death

if Page = 70
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Наклз! Как я рад тебя видеть!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 71
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Взаимно. Что это за место? И почему мы оба здесь?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 72
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я не знаю. С Соником что-то случилось! Он напал меня! Я смог сбежать, но почему-то оказался здесь!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 73
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cо мной он тоже пытался разделаться.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 74
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И кстати: похоже, теперь ёж может управлять чужим сознанием! Было ощущение, что он хотел заставить меня сойти с ума!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 75
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Точно! От этого Соника веет какой-то странной аурой!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 76
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Аурой? Точно! Возможно я смогу узнать, что случилось с нашим другом!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 77
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 78
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Недавно нашел изумруд хаоса! Он поможет понять, что творится с этим колючим шаром!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 79
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я неуверен Наклз. Что может сделать один изумруд хаоса, без специального оборудования?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 80
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не забывай, что я -хранитель Мастер-изумруда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 81
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И если я могу управлять его энергией, то неужели я не смогу активировать обычный камень!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 83
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "ЭТО СОНИК! ОН НАШЁЛ НАС! ЧТО ТЕПЕРЬ ДЕЛАТЬ?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 84
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не бойся Тейлз! Мы должны остаться! Если подпустить его ближе, изумруд сможет уловить энергетику! ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 85
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "НО НАКЛЗ! Что мешает Сонику убить нас на расстоянии, с помощью контроля разума?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 86
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Все тот же изумруд. Это конечно не супер-форма, но он способен блокировать ментальные атаки!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 87
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хорошо. Я хотел спросить тебя... Ты думаешь это сделал Эггман?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 88
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не знаю точно, но мне кажется, что да.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 89
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Рассредоточимся!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Easter_Scene
if Page = 91
{
draw_sprite(sprSW_ExeConfused,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What the heck?! Who are you!?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 92
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I'm Creep,the dark guardian of Sonic's mind. And I can see that your trying to take control of his body.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 93
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I wont do the work for you, But I can give you a tip...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 94
{
draw_sprite(sprSW_ExeAngry,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Just who do you think you are? I'm this worlds god! His body belongs to ME! Now get out of my way.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 95
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Kill his friends, that will destroy his spirit.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 96
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 97
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Destroy all of his hope, and the body will be yours for the taking.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 98
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Now go away.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}


if Page = 102
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "So you still haven't lost hope? Right Sonic?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 103
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "It seems that this freak did not lie to me...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 104
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "But don't worry blue! Something tells me that it's not all your friends ...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
SonicStop.sprite_index = sprDeadSonic2
}

if Page = 106
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Get ready girls! We are going!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 108
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What's that red mist?... Maybe its poisonous gas!? No...It cant be...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 109
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sonic wouldn't have called me here if it was poison, Its probably some trap set up by Eggman! I can't waste any time. Sonic needs my help!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 111
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What happened...?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 113
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sonic is attempting to get into my base?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 114
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Quickly! I must send all of my robots to quickly deal with him! He shouldn't be able to defeat them all!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 116
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...This cant be... S-Send all of the robots at once!!!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 118
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])
//draw_sprite(sprSW_ExeGrin,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "You fools! You decided to beat me by giving me the power inside of the master emerald?!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 119
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Very clever Knuckles! But thank you, for helping me find the emerald!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 120
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "It's time to end all of you!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 122
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Just in time Eggman!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 124
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Seems that Sonic has weakened the impostor! Time to complete the cleansing!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 125
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "It should force the demon out of Sonic, But at the same time we risk...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 126
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "destroying Sonic's mind... But we have no choice! Let's go!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 128
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Looks like you couldn't beat us. Now its time for you to burn in hell.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 130
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I think he's dead...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Deadly Fog
//All && without Eggman
if Page = 132
{
draw_sprite(sprSW_TailsWary,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What is this place?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 133
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I'm not sure Tails...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 134
{
draw_sprite(sprSW_TailsWary,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...I can see something in the distance.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 135 && BL.Eggman_Plot = true
{
draw_sprite(sprSW_EggmanFrown,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Will you two quit wasting time?! We need to get a move on!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}
else if Page = 135 && BL.Eggman_Plot = false
{
Page += 1
}

if Page = 136
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Your right it actually looks like...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Exe && Tails
if Page = 138
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Oh...my...God...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 139
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Wow Im impressed, the unlikely fox is still alive and well...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 140
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Y-You just... K-Killed them like t-they were n-nothing!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 141
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I know. Too bad that your next... Now hold still and let me do this quick.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 143
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Im sorry Sonic but... I wont let you get away with this!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 144
{
draw_sprite(sprSW_ExeConfused,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 145
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Y-You killed all of my friends! Knuckles. The Flickies. You're not Sonic anymore!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 146
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...I won't let you leave this place in one piece.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 147
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "(Laughing) Really now? I killed everyone you know, easily.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 148
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Do you really think you stand a-",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 150
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What's the matter Knuckles? Did I ruin your 'Happy ending'?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 151
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You...I-I'll...I'LL KILL YOU!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 153
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "It was fun watching you struggle... any last words?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 154
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...See you in hell.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 155
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "What?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 157
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Do you really think I'm that stupid?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 158
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Goodbye Sonic...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 160
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

DF_Eggman.image_xscale = 1
draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hey. You weren't going to leave without saying goodbye?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 162
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You know Sonic... You've always stopped my plans in the past, and I haven't been able",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 163
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "to actually destroy you. But I have to say 'Thanks'. Every time you were able to actually defeat me,",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 164
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I was always improving after my defeat. My only motivation was killing you But now, seeing that you've",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 165
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "killed your own friends, Tails, Knuckles... I have to ask you:",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 166
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Who's the real bad guy here?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 167
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "If anything...I'm doing Mobius a favor by doing this to you.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 168
{
draw_sprite(sprSW_Metal,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I can't hold him for much longer.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 169
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Well, It wasn't nice knowing you. Goodbye Sonic,",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 170
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Metal Sonic, Snap his neck!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 172
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hah! Don't worry Blue, They will be here soon.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 173
{
draw_sprite(sprSW_SlaveSonic,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Leave them alone! You've already captured my mind,is it still not enough?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 174
{
draw_sprite(sprSW_SlaveSonic,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Why do you want to still kill my friends?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 175
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "If I captured your mind you wouldn't exist anymore. The hope for your friends doesn't allow you to give up,",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}
if Page = 176
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "you hope that they will save you. But that won't happen...Give me a few more seconds.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 178
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "There it is!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 180
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "It looks like Knuckles is able to feel the master emerald, its close by...With his strength, I'll no longer",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 181
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "have to hide from any of the guards! This world will be mine!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 182
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Yes, I'm close enough to finally start adsorbing the energy!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 184
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "This is going exactly as I planned. The closer I get to the emerald, the stronger I become, after a minute.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 185
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "I'll gain enough strength to destroy your spirit. And finally take over your body!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 186
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Then nobody will stop me!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 188
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You know, the idea of taking over the world with robotics. It's not seems very appealing to me anymore...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 190
{
if BL.AEC_T = true or BL.AEC_K = true or BL.AEC_E = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You got the average ending",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if instance_exists(Trio_Away)
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You got the bad ending",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.Suicide = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You got the worst ending",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.BestEnd = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You got the best ending",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.GoodEnd = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "You got the good ending",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}}

if Page = 191
{
//draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "The Creator of the game: JaizKoys (or Twin)",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 192
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Translator: Quote",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 193
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Special thanks:",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 194
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Luigikid Gaming RiskRim Fellow Player Great Insane Killer//Blue",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 195
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "BloodPopMaggot Zerty TV Yoshi's Gaming Channel Zabujca Milan",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 196
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Mastermax888 GamingFrancis Nica Edy Asdfg303",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 197
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "BluFish99 XeSHShadow90 Lepto LordVaporWave",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 198
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "And everyone who helped out in the comments of the Game Jolt page!",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 199
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Also, I want to ask you: Did you enjoy the game?",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 200
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "If yes, then I'm happy! if not, then I understand you",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 201
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "In any case, thanks for your support! Without it. I would have never been able to get the motivation to actually finish this.",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 202
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Good luck!",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}
}
if global.lang = 1
{
if Page = 1
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Снова зелёные холмы...В последнее время я слишком часто здесь бываю. Зачем Соник вызвал меня сюда в этот раз?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//All
if Page = 3
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что это за место?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 5
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Наклз! Эггман! Как я рад вас видеть! Что-то не так с Соником: он пытался...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 6
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Убить тебя? Не удивляйся: со мной он тоже пытался разделаться! Что ты сделал с Соником, Яйцеголовый?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 7
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Меня зовут Эггман! И я понятия не имею что случилось с этим синим выскочкой!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 8
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Моя цель - роботизация, не убийство! Я видел как Соник убивал животных. Но я чуял, что он хочет добраться до меня!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 9
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я приказал бадникам задержать его, а сам ушел потайным путем. У меня было подозрение, что они не остановят ежа.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 10
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как оказалось, я был прав.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 11
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже, теперь синий может управлять чужим сознанием! Было ощущение, что он хотел заставить меня сойти с ума!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 12
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Согласен! От этого Соника веет какой-то странной аурой.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 13
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Аурой? Точно! Возможно я смогу узнать, что случилось с нашим другом!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 14
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 15
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Недавно нашел изумруд хаоса! Он поможет понять, что творится с этим колючим шаром!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 16
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И что ты можешь сделать?! У нас нет механизмов, способных вычислить состояние ежа!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 17
{
CutTails.image_xscale = -1
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Боюсь он прав, Наклз.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 18
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не забывайте, что я -хранитель Мастер-изумруда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 19
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И если я могу управлять его энергией, то неужели я не смогу использовать обычный камень!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 21
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А вот и виновник торжества! Нужно уходить.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 22
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не нужно. Мы должны остаться! Если подпустить его ближе, изумруд сможет уловить энергетику! ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 23
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Но Наклз! Что мешает Сонику убить нас на расстоянии, с помощью контроля разума?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 24
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Все тот же изумруд. Это конечно не супер-форма, но он способен блокировать ментальные атаки!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 25
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Рассредоточимся!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Tails_Death
if Page = 27
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Наклз?! Не думал, что скажу это, но я рад тебя видеть!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 28
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не пытайся меня запутать, ряженое яйцо! Что происходит?! Что ты сделал с Соником!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 29
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Меня зовут Эггман! И я понятия не имею что случилось с этим синим выскочкой!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 30
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Моя цель - роботизация, не убийство! Я видел как Соник убивал животных. Но я чуял, что он хочет добраться до меня!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 31
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я приказал бадникам задержать его, а сам ушел потайным путем. У меня было подозрение, что они не остановят ежа.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 32
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как оказалось, я был прав.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 33
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже, теперь синий может управлять чужим сознанием! Было ощущение, что он хотел заставить меня сойти с ума!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 34
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Есть идея! Возможно я смогу узнать, что случилось с нашим другом!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 35
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Твоим другом...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 36
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Недавно нашел изумруд хаоса! Он поможет понять, что творится с этим колючим шаром!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 37
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И что ты можешь сделать?! У нас нет механизмов, способных вычислить состояние ежа!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}


if Page = 38
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не забывай, что я -хранитель Мастер-изумруда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 39
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И если я могу управлять его энергией, то неужели я не смогу использовать обычный камень!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 42
{
CutTails.image_xscale = 1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А вот и виновник торжества! Нужно уходить.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 43
{
CutTails.image_xscale = -1
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не нужно. Мы должны остаться! Если подпустить его ближе, изумруд сможет уловить энергетику! ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 44
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ты идиот?! Что мешает Сонику убить нас на расстоянии, с помощью контроля разума?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 45
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Все тот же изумруд. Это конечно не супер-форма, но он способен блокировать ментальные атаки!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 46
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Рассредоточимся!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Knuckles_Death

if Page = 48
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Эггман! Что ты здесь делаешь?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 49
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "То же, что и ты, я полагаю...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 50
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Значит Соник напал и на тебя?! Это ужасно! Что с ним случилось?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 51
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ну, в самом деле он на меня не нападал. Пытался, но я успел сбежать.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 52
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Еще, весьма странно то, что мы оба пришли сюда, хотя я даже не знал об этом месте!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 53
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Точно! Я тоже здесь впервые! У меня было ощущение, что что-то вело меня сюда.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 54
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Или кто-то... Я подозреваю, что это был еж. У меня  постоянное ощущение, что он видит меня!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 55
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Согласен! Как думаешь: можно ли как-то сделать Соника снова нормальным?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 56
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хмм... Если бы я смог вычислить его состояние в данный момент... Но у меня нет нужных приборов... ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 57
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хотя... Возможно у моего коммуникатора еще осталась энергия. Я мог бы вызвать Метал-Соника!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 58
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Это может сработать! Метал имеет связь со своим прототипом, значит он может просканировать его!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 59
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И заодно помочь нам выжить!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 61
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А вот и наш сумасшедший! Ну что Тейлз: сейчас или никогда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 64
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ура доктор: у вас получилось!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 65
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Осталось только задать ему программу и... Готово!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 66
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Отлично! Надеюсь с Наклзом все в порядке!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 67
{
CutEggman.image_xscale = -1
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Знаешь Тейлз: Мне кажется, что Наклза больше нет...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 68
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Eggman Death

if Page = 70
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Наклз! Как я рад тебя видеть!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 71
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Взаимно. Что это за место? И почему мы оба здесь?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 72
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я не знаю. С Соником что-то случилось! Он напал меня! Я смог сбежать, но почему-то оказался здесь!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 73
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cо мной он тоже пытался разделаться.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 74
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И кстати: похоже, теперь ёж может управлять чужим сознанием! Было ощущение, что он хотел заставить меня сойти с ума!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 75
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Точно! От этого Соника веет какой-то странной аурой!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 76
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Аурой? Точно! Возможно я смогу узнать, что случилось с нашим другом!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 77
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Как?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 78
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Недавно нашел изумруд хаоса! Он поможет понять, что творится с этим колючим шаром!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 79
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я неуверен Наклз. Что может сделать один изумруд хаоса, без специального оборудования?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 80
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не забывай, что я -хранитель Мастер-изумруда!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 81
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И если я могу управлять его энергией, то неужели я не смогу активировать обычный камень!?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 83
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "ЭТО СОНИК! ОН НАШЁЛ НАС! ЧТО ТЕПЕРЬ ДЕЛАТЬ?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 84
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не бойся Тейлз! Мы должны остаться! Если подпустить его ближе, изумруд сможет уловить энергетику! ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 85
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "НО НАКЛЗ! Что мешает Сонику убить нас на расстоянии, с помощью контроля разума?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 86
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Все тот же изумруд. Это конечно не супер-форма, но он способен блокировать ментальные атаки!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 87
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хорошо. Я хотел спросить тебя... Ты думаешь это сделал Эггман?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 88
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не знаю точно, но мне кажется, что да.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 89
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Рассредоточимся!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Easter_Scene
if Page = 91
{
draw_sprite(sprSW_ExeConfused,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Какого чёрта?! Ты ещё кто!?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 92
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я Крип-тёмный страж рассудка Соника. Вижу ты пытаешся взять контроль над ежом",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 93
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я не собираюсь делать эту работу за тебя,но я могу дать тебе подсказку...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 94
{
draw_sprite(sprSW_ExeAngry,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Да кто ты такой?! Я здесь бог! Его тело принадлежит МНЕ! Исчезни!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 95
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Убей его друзей, и ты сможешь сломить его дух",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 96
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 97
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Уничтожь точки надежды и ты сможешь взять тело под полный контроль",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 98
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Теперь уходи",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 106
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Готовьтесь девчонки! Мы идём!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 108
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что это за красный туман? Вдруг это ядовитый газ!? Нет,сомневаюсь...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 109
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Соник не вызвал бы меня сюда, если бы это был яд. Думаю это просто обманка, созданная Эггманом. Однако хватит: ежу нужна помощь!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 111
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что случилось?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 113
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Соник напал на мою базу?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 114
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Быстро! Послать всех моих роботов, на устранение этого грызуна!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 116
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Невозможно! Отправить всех роботов до единого!!!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 118
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Придурки! Вы действительно хотите победить меня с помощью энергии Мастер- изумруда?!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 119
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Очень умно Наклз! В любом случае, спасибо за то что помог найти изумруд.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 120
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Пришло время покончить с вами!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 122
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Как раз вовремя!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 124
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Похоже, что захватчик ослаб! Пришло время совершить очищение!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 125
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Это должно выбить демона из Соника, но также имеется риск...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 126
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "...уничтожить разум ежа. Но у нас нет выбора! Начнём!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 128
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже ты не можешь победить нас. Пришло твоё время гореть в аду.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 130
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже он мёртв...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Deadly Fog
//All && without Eggman
if Page = 132
{
draw_sprite(sprSW_TailsWary,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что это за место?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 133
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я не знаю Тейлз",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 134
{
draw_sprite(sprSW_TailsWary,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "По-моему я вижу что-то вдалеке...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 135 && BL.Eggman_Plot = true
{
draw_sprite(sprSW_EggmanFrown,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хватит впустую терять время! Мы должны двигаться!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}
else if Page = 135 && BL.Eggman_Plot = false
{
Page +=1
}

if Page = 136
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ты прав Тейлз: я тоже что-то вижу...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Exe && Tails
if Page = 138
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "О, Господи!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 139
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Вау, я впечатлён! Невезучая лиса всё ещё жива...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 140
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Т-Ты просто... У-Убил их, будто они - ничто!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 141
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "А разве это не так? Однако теперь твоя очередь. Замри и дай сделать это быстро.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 143
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Прости меня Соник, но... теперь я не могу дать тебе уйти!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 144
{
draw_sprite(sprSW_ExeConfused,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 145
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Т-Ты убил всех моих друзей! Наклза. Зверят. Ты больше не Соник!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 146
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...я не дам тебе уйти из этого места.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 147
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "(Смеясь) Ты это серьёзно?! Я уже убил множество зверей.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 148
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ты и вправду думаешь, что сможешь остано...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 150
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что случилось Наклз? Кажется я разрушил твой 'счастливый конец'!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 151
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ты...Я...Я УБЬЮ ТЕБЯ!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 153
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Хех, было весело наблюдать за твоими попытками сопротивления... Последние слова?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 154
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...увидимся в аду.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 155
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Что?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 157
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Ты и вправду думал, что я такой тупой?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 158
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Прощай соник...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 160
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

DF_Eggman.image_xscale = 1
draw_text_ext_color(view_xview[0]+100, view_yview[0], "Эй! Ты решил уйти не попрощавшись?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 162
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Знаешь Соник... Ты всегда срывал мои планы в прошлом, и я всегда",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 163
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "хотел уничтожить тебя. Но я должен сказать 'спасибо'. После каждого поражения,",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 164
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "я всегда улучшал свои навыки. Моим единственным желанием было убить тебя Но сейчас, когда я увидел",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 165
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "что ты убил своих друзей: Тейлза, Наклза... Я хочу спросить тебя:",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 166
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Кто здесь настоящий плохой парень?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 167
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "В любом случае...Я сделаю Мобиусу одолжение, прикончив тебя.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 168
{
draw_sprite(sprSW_Metal,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Я не могу удерживать его дольше.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 169
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ладно, было неприятно познакомиться с тобой. Прощай Соник.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 170
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Метал-Соник, сверни ему шею!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 172
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Не волнуйся Синяк! Скоро они тоже будут с тобой!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 173
{
draw_sprite(sprSW_SlaveSonic,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Оставь их в покое! Ты уже захватил мой разум! Неужели тебе этого мало?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 174
{
draw_sprite(sprSW_SlaveSonic,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Почему ты хочешь убить моих друзей?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 175
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Если бы я захватил твой разум: тебя бы уже не существовало. Надежда твоих друзей не даёт тебе сдаться",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}
if Page = 176
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "ты надеешься что они спасут тебя. Но этого не произойдёт...Дай мне лишь несколько секунд.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 178
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Вот и оно!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 180
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Похоже Наклз может чувствовать энергию Мастер-изумруда. Уже близко...С этой силой я",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 181
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "наконец-то разделаюсь со стражем! Этот мир станет моим!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 182
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Да, я достаточно близко, чтобы начать впитывать энергию!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 184
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Всё идёт точно по плану! Чем ближе изумруд, тем я сильнее! Где-то через минуту",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 185
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "С этой силой я уничтожу твою душу, и возьму полный контроль над твоим телом!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 186
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И тогда никто меня не остановит!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 188
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Знаешь, идея захвата мира с помощью роботизации больше не кажется мне привлекательной ...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 190
{
if BL.AEC_T = true or BL.AEC_K = true or BL.AEC_E = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ты получил среднюю концовку",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if instance_exists(Trio_Away)
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Вы получили плохую концовку",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.Suicide = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Вы получили худшую концовку",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.BestEnd = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Вы получили лучшую концовку",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.GoodEnd = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Вы получили хорошую концовку",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}}

if Page = 191
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Создатель игры: JaizKoys (или Твин)",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 192
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Переводчик: Твин",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 193
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Отдельное спасибо:",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 194
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Luigikid Gaming IC003969 Fellow Player Great Insane Killer//Blue",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 195
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "BloodPopMaggot Zerty TV Yoshi's Gaming Channel Zabujca Milan",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 196
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Mastermax888 GamingFrancis Nica Edy Asdfg303",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 197
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "BluFish99 XeSHShadow90 Lepto LordVaporWave",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 198
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "И всем, кто помогал мне!",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 199
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Также хочу спросить вас: понравилась ли вам игра?",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 200
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Если да: я счастлив! Если нет: Я понимаю вас.",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 201
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "В любом случае: спасибо за вашу поддержку! Без неё я бы никогда не закончил эту игру.",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 202
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Удачи!",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

}
if global.lang = 2
{
if Page = 1
{
draw_sprite(sprSW_Tails,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Di nuovo nella zona della collina verde... L'ultima volta ero qui quando Sonic venne per la sua prima avventura, mi chiedo perche mi abbia chiamato qua.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Easter_Scene
if Page = 91
{
draw_sprite(sprSW_ExeConfused,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ma che diamine?! Chi sei!?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 92
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sono Creep, il guardiano oscuro della mente di Sonic. E vedo che cerchi di prendere il controllo del suo corpo.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 93
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Non faro il lavoro per te, ma ti posso dare un consiglio...I wont do the work for you,But I can give you a tip...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 94
{
draw_sprite(sprSW_ExeAngry,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Chi ti credi di essere? Io sono il Dio di questo mondo! Il suo corpo appartiene a ME! Adesso levati da mezzo.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 95
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Uccidi tutti i suoi amici, distruggera il suo spirito.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 96
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 97
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Distruggi tutte le sue speranze, e il corpo sara tuo.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 98
{
draw_sprite(sprSW_Creeps,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Adesso vai via.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 106
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Preparatevi ragazze! Stiamo venendo!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 108
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cos'e quella nebbia rossa?... Forse e gas velenoso!? No...Non puo essere... Sonic non mi avrebbe chiamato qua se c'era",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 109
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "del veleno. E probabilmente qualche trappola fatta da Eggman! Non posso perdere tempo! Sonic ha bisogno del mio aiuto!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 111
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cosa e successo...?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 113
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sonic sta entrando nella mia base!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 114
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Presto, devo inviare tutti i miei robot per non avere piu a che fare con lui! Non riuscira a sconfiggerli tutti!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 116
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Non puo essere... e-elimina tutti i robot in una volta!!!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 118
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Stupidi! Avete deciso di battermi dandomi l'energia del master emerald?!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 119
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Davvero intelligente Knuckels! Ma grazie, per avermi aiutato a trovare lo smeraldo!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 120
{
draw_sprite_part(sprSW_ExeGrin,1,0,0,642,80,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "E ora di finire tutti voi!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 122
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Appena in tempo Eggman!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 124
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Sembra che Sonic ha indebolito l'impostore! E ora di finire la rimozione!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 125
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "Dovrebbe far uscire fuori il demone da Sonic, ma allo stesso tempo rischiamo di distruggere",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 126
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[1],view_yview[1])

draw_text_ext_color(view_xview[1]+100, view_yview[1], "la mente di Sonic... Ma non abbiamo scelta! Andiamo!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 128
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Sembra che non puoi batterci. E ora che tu bruci all'inferno.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 130
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Penso sia morto...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Deadly Fog
//All && without Eggman
if Page = 132
{
draw_sprite(sprSW_TailsWary,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cos'e questo posto?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 133
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Non ne sono sicuro Tails...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 134
{
draw_sprite(sprSW_TailsWary,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Riesco a vedere qualcosa in distanza",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 135 && BL.Eggman_Plot = true
{
draw_sprite(sprSW_EggmanFrown,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Potreste smettere voi due di perdere tempo?! Dobbiamo darci una mossa!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}
else if Page = 135 && BL.Eggman_Plot = false
{
Page +=1
}

if Page = 136
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sembra che hai ragione...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

//Exe && Tails
if Page = 138
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Oh...mio...Dio...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 139
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Oh? Wow impressionante, la volpe e riuscita a sopravvivere...",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 140
{
draw_sprite(sprSW_TailsShocked,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "T-tu li hai... U-uccisi come se non f-fossero n-niente...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 141
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Peccato che tu sei il prossimo. Adesso stai fermo e fammi fare questo in fretta.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 143
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Non ti lascero andare via con questo!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 144
{
draw_sprite(sprSW_ExeConfused,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cosa?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 145
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "T-tu hai ucciso tutti i miei amici. Knuckels. I Flickies. Non sei piu Sonic!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 146
{
draw_sprite(sprSW_TailsCrying,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Non ti lascero andare via da questo posto in un pezzo.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 147
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Davvero adesso? Ho ucciso tutti tu sai, facilmente.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 148
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Davvero credi di avere una-",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 150
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cosa succede Knuckels? Ti ho rovinato il tuo 'Finale felice'?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 151
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Tu...t-ti...TI UCCIDERO!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 153
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "E divertente vederti lottare...ultime parole?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 154
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Ci vediamo all'inferno.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 155
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Cosa?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 157
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "...Pensi davvero che sono stupido?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 158
{
draw_sprite(sprSW_KnucklesWarn,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Addio Sonic...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 160
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

DF_Eggman.image_xscale = 1
draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hei. Non te ne vai senza dire addio?",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 162
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sai Sonic...hai sempre fermato i miei piani in passato, e non sono stato in grado",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 163
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "di distruggerti. Pero ti dico 'grazie'...ogni volta che sei stato in grado di sconfiggermi,",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 164
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "sono sempre migliorato dopo la mia sconfitta. La mia unica motivazione era ucciderti... Ma adesso, vedendo che ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 165
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "hai ucciso i tuoi amici, Tails, Knuckels...ti chiedo: ",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 166
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "chi il vero cattivo ragazzo qua?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 167
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], " Se niente... sto facendo un favore facendo questo a te.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 168
{
draw_sprite(sprSW_Metal,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Non posso tenerlo ancora a lungo.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 169
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Beh, non e stato bello conoscerti. Addio Sonic",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 170
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Metal Sonic, rompigli il collo.",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 172
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hah! Non preoccuparti, saranno qui presto.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 173
{
draw_sprite(sprSW_SlaveSonic,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Lasciali stare! Hai gia preso la mia mente, non e abbastanza?",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 174
{
draw_sprite(sprSW_SlaveSonic,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Perche vuoi ancora uccidere i miei amici?!",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 175
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Se ho catturato la tua mente tu non esisterai piu. La speranza per i tuoi amici non ti permette di arrenderti,",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}
if Page = 176
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "tu speri che loro ti salveranno. Ma non accadra... dammi qualche secondo.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 178
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Eccolo!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 180
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "A quanto pare Knuckels e in grado di sentire il master emerald, e vicino...con la sua forza,",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 181
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "non dovro piu nascondermi da nessuna guardia! Questo mondo sara mio!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 182
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Si, sono abbastanza vicino finalmente per assorbire l'energia!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 184
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sta andando esattamente come ho pianificato. Vicino sono andato per prendere lo smeraldo,",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 185
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "forte sono diventato, dopo un minuto. Ho avuto abbastanza forza per distruggere il tuo spirito.",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 186
{
draw_sprite(sprSW_Exe,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "E alla fine prendere il tuo corpo! Poi nessuno mi fermera!",16,view_wview[0]-100,$5050cf,$5050cf,$5050cf,$5050cf,1)
}

if Page = 188
{
draw_sprite(sprSW_Eggman,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Sai, l'idea di conquistare il mondo con i robotics. Non mi piace molto...",16,view_wview[0]-100,$00ffff,$00ffff,$00ffff,$005555,1)
}

if Page = 190
{
if BL.AEC_T = true or BL.AEC_K = true or BL.AEC_E = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hai ottenuto il finale vendicativo",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if instance_exists(Trio_Away)
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hai ottenuto il finale cattivo",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.Suicide = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hai ottenuto il finale peggiore",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.BestEnd = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hai ottenuto il finale migliore",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if global.GoodEnd = true
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Hai ottenuto il finale buono",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}}

if Page = 191
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Il creatore del gioco: JaizKoys",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 192
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Traduttore: SuicideMouse10",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 193
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Ringraziamenti speciali:",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 194
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Luigikid Gaming RiskRim Fellow Player Great Insane Killer//Blue",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 195
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "BloodPopMaggot Zerty TV Yoshi's Gaming Channel Zabujca Milan",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 196
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Mastermax888 GamingFrancis Nica Edy Asdfg303",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 197
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "BluFish99 XeSHShadow90 Lepto LordVaporWave",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 198
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "E tutti quelli che hanno aiutato nei commenti nella pagina di Game Jolt!",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 199
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Vi voglio anche domandare: vi e piaciuto il gioco?",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 200
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Se si, allora sono felice! Se no, allora vi capisco.",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 201
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "In ogni caso, grazie per il vostro supporto! Senza di esso non sarei mai riuscito ad avere la motivazione di finirlo.",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

if Page = 202
{
draw_sprite(sprSW_Twin,1,view_xview[0],view_yview[0])

draw_text_ext_color(view_xview[0]+100, view_yview[0], "Buona fortuna!",16,view_wview[0]-100,$006e00,$006e00,$006e00,$006e00,1)
}

}
