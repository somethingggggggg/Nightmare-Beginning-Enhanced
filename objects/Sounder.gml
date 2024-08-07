#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pause = 0
sprpausefuck = 0
global.T_bossfight = 0
prev_view_hview = view_hview
prev_view_wview = view_wview
global.S_sound_take=caster_load(working_directory+"/Sound/S_sound_take.ogg")
global.S_YCRS=caster_load(working_directory+"/Sound/S_You_Can_t_Run_Secret.ogg")
//global.S_sound_take=sound_add(working_directory+"/Sound/S_sound_take.ogg",0,0)
//global.S_YCRS=sound_add(working_directory+"/Sound/S_You_Can_t_Run_Secret.ogg",0,0)
global.S_Alarm_2=sound_add(working_directory+"/Sound/Alarm_2.mp3",0,0)
global.S_BoxBroke=sound_add(working_directory+"/Sound/BoxBroke.wav",0,0)
global.S_Breathing=sound_add(working_directory+"/Sound/Breath.wav",0,0)
global.S_Broke=sound_add(working_directory+"/Sound/Broke.wav",0,0)
global.S_Burn=sound_add(working_directory+"/Sound/Burn.wav",0,0)
global.S_BushesSound=sound_add(working_directory+"/Sound/BushesSound.wav",0,0)
global.S_ChargedUp=sound_add(working_directory+"/Sound/ChargedUp.wav",0,0)
global.S_Continue_S=sound_add(working_directory+"/Sound/Continue_S.mp3",0,0)
global.S_ContinueLive=sound_add(working_directory+"/Sound/ContinueLive.wav",0,0)
global.S_Crack_Wall=sound_add(working_directory+"/Sound/Crack_Wall.wav",0,0)
global.S_Crash=sound_add(working_directory+"/Sound/Crash.wav",0,0)
global.S_D_Mode_Active=sound_add(working_directory+"/Sound/D_Mode_Active.mp3",0,0)
global.S_Danger_Run=sound_add(working_directory+"/Sound/Danger_Run.mp3",0,0)
global.S_Dead_1=sound_add(working_directory+"/Sound/Dead_1.mp3",0,0)
global.S_EGG_Shield=sound_add(working_directory+"/Sound/EGG_Shield.wav",0,0)
global.S_Egg_Sound=sound_add(working_directory+"/Sound/Egg_Sound.mp3",0,0)
global.S_Egg_Speak1=sound_add(working_directory+"/Sound/Egg_Speak1.wav",0,0)
global.S_Egg_Speak2=sound_add(working_directory+"/Sound/Egg_Speak2.wav",0,0)
global.S_Egg_Speak3=sound_add(working_directory+"/Sound/Egg_Speak3.wav",0,0)
global.S_Endgame=sound_add(working_directory+"/Sound/Endgame.mp3",0,0)
global.S_Exe_Battle=sound_add(working_directory+"/Sound/Exe_Battle.mp3",0,0)
global.S_Exe_OST=sound_add(working_directory+"/Sound/Exe_OST.mp3",0,0)
global.S_ExeBeat=sound_add(working_directory+"/Sound/ExeBeat.wav",0,0)
global.S_ExeFinish=sound_add(working_directory+"/Sound/ExeFinish.mp3",0,0)
global.S_Exployed=sound_add(working_directory+"/Sound/Exployed.mp3",0,0)
global.S_FF_S=sound_add(working_directory+"/Sound/FF_S.mp3",0,0)
global.S_Final_Boss=sound_add(working_directory+"/Sound/Final_Boss.mp3",0,0)
global.S_Forest=sound_add(working_directory+"/Sound/Forest.mp3",0,0)
global.S_Game_Over=sound_add(working_directory+"/Sound/Game_Over.mp3",0,0)
global.S_Green_Hill=sound_add(working_directory+"/Sound/Green_Hill.mp3",0,0)
global.S_Green_Hill2=sound_add(working_directory+"/Sound/Green_Hill2.mp3",0,0)
global.S_Hidden_level=sound_add(working_directory+"/Sound/Hidden_level.mp3",0,0)
global.S_Hide_and_Seek=sound_add(working_directory+"/Sound/Hide_and_Seek.mp3",0,0)
global.S_HideSound=sound_add(working_directory+"/Sound/HideSound.mp3",0,0)
global.S_Hill=sound_add(working_directory+"/Sound/Hill.mp3",0,0)
global.S_Hit=sound_add(working_directory+"/Sound/Hit.wav",0,0)
global.S_IntoSpike=sound_add(working_directory+"/Sound/IntoSpike.wav",0,0)
global.S_KS_Pre=sound_add(working_directory+"/Sound/KS_Pre.mp3",0,0)
global.S_Lab_S=sound_add(working_directory+"/Sound/Lab_S.mp3",0,0)
global.S_Lift=sound_add(working_directory+"/Sound/Lift.wav",0,0)
global.S_LiftFall=sound_add(working_directory+"/Sound/LiftFall.mp3",0,0)
global.S_Locked=sound_add(working_directory+"/Sound/Locked.wav",0,0)
global.S_LoseRings=sound_add(working_directory+"/Sound/LoseRings.wav",0,0)
global.S_Metal_Call=sound_add(working_directory+"/Sound/Metal_Call.wav",0,0)
global.S_Metal_Pingas=sound_add(working_directory+"/Sound/Metal_Pingas.wav",0,0)
global.S_MetalBroke=sound_add(working_directory+"/Sound/MetalBroke.wav",0,0)
global.S_Mindfuckery=sound_add(working_directory+"/Sound/Mindfuckery.mp3",0,0)
global.S_MS_Move=sound_add(working_directory+"/Sound/MS_Move.wav",0,0)
global.S_Noice=sound_add(working_directory+"/Sound/Noice.mp3",0,0)
global.S_NoiceKS=sound_add(working_directory+"/Sound/NoiceKS.wav",0,0)
global.S_Pig_Scream=sound_add(working_directory+"/Sound/Pig_Scream.wav",0,0)
global.S_RaceFail=sound_add(working_directory+"/Sound/RaceFail.mp3",0,0)
global.S_Ring=sound_add(working_directory+"/Sound/Ring.wav",0,0)
global.S_Rise=sound_add(working_directory+"/Sound/Rise.mp3",0,0)
global.S_Save_Select=sound_add(working_directory+"/Sound/Save_Select.mp3",0,0)
global.S_Scary_Remix=sound_add(working_directory+"/Sound/Scary_Remix.mp3",0,0)
global.S_Scream_1=sound_add(working_directory+"/Sound/Scream_1.wav",0,0)
global.S_SCREAM_2=sound_add(working_directory+"/Sound/SCREAM_2.mp3",0,0)
global.S_Scream_4=sound_add(working_directory+"/Sound/Scream_4.mp3",0,0)
global.S_SCREAM_5=sound_add(working_directory+"/Sound/SCREAM_5.mp3",0,0)
global.S_Select_Screen=sound_add(working_directory+"/Sound/Select_Screen.mp3",0,0)
global.S_Signpost=sound_add(working_directory+"/Sound/Signpost.wav",0,0)
global.S_SmashDash=sound_add(working_directory+"/Sound/SmashDash.wav",0,0)
global.S_Smeh=sound_add(working_directory+"/Sound/Smeh.wav",0,0)
global.S_Speak_1=sound_add(working_directory+"/Sound/Speak_1.mp3",0,0)
global.S_Speak_2=sound_add(working_directory+"/Sound/Speak_2.mp3",0,0)
global.S_Speak_3=sound_add(working_directory+"/Sound/Speak_3.mp3",0,0)
global.S_Speak_4=sound_add(working_directory+"/Sound/Speak_4.mp3",0,0)
global.S_Speak_5=sound_add(working_directory+"/Sound/Speak_5.mp3",0,0)
global.S_Speak_6=sound_add(working_directory+"/Sound/Speak_6.mp3",0,0)
global.S_Speak_7=sound_add(working_directory+"/Sound/Speak_7.mp3",0,0)
global.S_Speak_8=sound_add(working_directory+"/Sound/Speak_8.mp3",0,0)
global.S_Speak_9=sound_add(working_directory+"/Sound/Speak_9.mp3",0,0)
global.S_Spring=sound_add(working_directory+"/Sound/Spring.wav",0,0)
global.S_SuicideHill=sound_add(working_directory+"/Sound/SuicideHill.mp3",0,0)
global.S_TAB=sound_add(working_directory+"/Sound/TAB.wav",0,0)
global.S_Tails_RippedOff=sound_add(working_directory+"/Sound/Tails_RippedOff.wav",0,0)
global.S_TimeLine_Off=sound_add(working_directory+"/Sound/TimeLine_Off.wav",0,0)
global.S_TimeLine_On=sound_add(working_directory+"/Sound/TimeLine_On.wav",0,0)
global.S_Title_Music=sound_add(working_directory+"/Sound/Title_Music.mp3",0,0)
global.S_To_Play=sound_add(working_directory+"/Sound/To_Play.mp3",0,0)
global.S_Twister_Start=sound_add(working_directory+"/Sound/Twister_Start.wav",0,0)
global.S_Uncrack_Wall=sound_add(working_directory+"/Sound/Uncrack_Wall.wav",0,0)
global.S_Wall_Fall=sound_add(working_directory+"/Sound/Wall_Fall.wav",0,0)
global.S_Warp=sound_add(working_directory+"/Sound/Warp.wav",0,0)
global.S_Warp2=sound_add(working_directory+"/Sound/Warp2.wav",0,0)
global.S_WorstEnd=sound_add(working_directory+"/Sound/WorstEnd.mp3",0,0)
global.S_You_Can_t_Run=sound_add(working_directory+"/Sound/You_Can_t_Run.mp3",0,0)
global.S_Spindash=sound_add(working_directory+"/Sound/Spindash.wav",0,0)
global.S_Rolling=sound_add(working_directory+"/Sound/Rolling.wav",0,0)
global.S_Jump=sound_add(working_directory+"/Sound/Jump.wav",0,0)
global.S_WellRing=sound_add(working_directory+"/Sound/WellRing.wav",0,0)
global.S_Sega=sound_add(working_directory+"/Sound/Sega.mp3",0,0)
global.S_Its_Over=sound_add(working_directory+"/Sound/It's_Over.wav",0,0)
global.S_Ray=sound_add(working_directory+"/Sound/Ray.wav",0,0)
global.S_NO=sound_add(working_directory+"/Sound/NO.wav",0,0)
global.S_DF_S=sound_add(working_directory+"/Sound/DF_S.mp3",0,0)
global.S_ExeScream=sound_add(working_directory+"/Sound/ExeScream.wav",0,0)
global.S_FinalSpindash=sound_add(working_directory+"/Sound/FinalSpindash.wav",0,0)
global.S_Pingas=sound_add(working_directory+"/Sound/Pingas.wav",0,0)
global.S_Bolt=sound_add(working_directory+"/Sound/Bolt.wav",0,0)
global.S_CrackNeck=sound_add(working_directory+"/Sound/CrackNeck.wav",0,0)
global.S_IRLF=sound_add(working_directory+"/Sound/IRLF.wav",0,0)
global.S_LTHDF=sound_add(working_directory+"/Sound/LTHDF.wav",0,0)
global.S_OHNO=sound_add(working_directory+"/Sound/OHNO.wav",0,0)
global.S_TMCS=sound_add(working_directory+"/Sound/TMCS.wav",0,0)
global.S_TTOUUS=sound_add(working_directory+"/Sound/TTOUUS.wav",0,0)
global.S_TYVM=sound_add(working_directory+"/Sound/TYVM.wav",0,0)
global.S_WAC=sound_add(working_directory+"/Sound/WAC.wav",0,0)
global.S_DF2_S=sound_add(working_directory+"/Sound/DF2_S.mp3",0,0)
global.S_WTG=sound_add(working_directory+"/Sound/WTG.wav",0,0)
global.S_Hyper=sound_add(working_directory+"/Sound/Hyper.mp3",0,0)
global.S_Make_This_Easy=sound_add(working_directory+"/Sound/Make_This_Easy.wav",0,0)
global.S_EnergyBlast=sound_add(working_directory+"/Sound/EnergyBlast.wav",0,0)
global.S_MetalRolling=sound_add(working_directory+"/Sound/MetalRolling.wav",0,0)
global.S_MetalSpindash=sound_add(working_directory+"/Sound/MetalSpindash.wav",0,0)
global.S_AverageEndings=sound_add(working_directory+"/Sound/AverageEndings.mp3",0,0)
global.S_AverageEndings2=sound_add(working_directory+"/Sound/AverageEndings2.mp3",0,0)
global.S_BestEndings=sound_add(working_directory+"/Sound/BestEndings.mp3",0,0)
global.S_BadEnding=sound_add(working_directory+"/Sound/BadEnding.mp3",0,0)
global.S_Chase=sound_add(working_directory+"/Sound/Chase.mp3",0,0)
global.S_suka=sound_add(working_directory+"/Sound/keepup.wav",0,0)
global.S_tailsfly=sound_add(working_directory+"/Sound/S3K_BA.wav",0,0)
global.S_tailstired=sound_add(working_directory+"/Sound/S3K_BB.wav",0,0)
global.S_CYFTS_voiceline=sound_add(working_directory+"/Sound/tailsdollvoice.wav",0,0)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pause = 0
view_hview = prev_view_hview
view_wview = prev_view_wview
global.menustate = 0
global.option = 0
//view_xview = prev_view_xview
//view_yview = prev_view_yview
instance_activate_all()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != 0
{
    if pause = 0
    {
        if keyboard_check_pressed(vk_escape) && !instance_exists(SW_Control)
        {
            sprpausefuck = sprite_create_from_screen(/*view_xview[0]*/0,0/*view_yview[0]*/,view_wview[0]*4,view_hview[0]*4,0,0,0,0)
            instance_deactivate_all(1)
            /*prev_view_xview = view_xview
            prev_view_yview = view_yview
            view_xview = 0
            view_yview = 0*/
            prev_view_hview = view_hview
            prev_view_wview = view_wview
            view_wview = 462
            view_hview = 260
            pause = 1
        }
    }
    else
    {
        if global.menustate = 1 scr_pausenav()
        else scr_pausenav2()
    }
}
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
discord_free_app()
discord_free_dll()
#define Other_30
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
discord_free_app()
discord_free_dll()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=332
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if pause = 1 && room != 0
{
    if global.menustate = 1 scr_pausedraw()
    else scr_pausedraw2()
    //execute_file(working_directory+"/script.txt")
}
if global.showfps = 1
{
    draw_set_font(global.dialoguefont)
    draw_text(view_xview,view_yview,fps)
}
