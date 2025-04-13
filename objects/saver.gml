#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=save_name
var_value=0
*/
#define Keyboard_97
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
save_name = get_string('Input Savefile Name',save_name)
if save_name != ("Sonic-exe NB Enhanced.exe")
{
    game_save(save_name+".nbesave")
}
else
{
    show_message("don't do that!")
}
#define Keyboard_98
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=333
invert=0
arg0=save2.nbesave
*/
#define Keyboard_99
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=333
invert=0
arg0=save3.nbesave
*/
#define Keyboard_100
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
save_name = get_string('Input Savefile Name',save_name)
game_load(save_name+".nbesave")
#define Keyboard_101
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=334
invert=0
arg0=save2.nbesave
*/
#define Keyboard_102
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=334
invert=0
arg0=save3.nbesave
*/
#define Keyboard_103
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=assiny
var_value=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
assiny = get_integer('input room number, input 999 for room list',assiny)
i = 0
roomstr = ""
if assiny = 999
{
    rooms = ds_list_create()
    repeat(room_last+1)
    {
        if room_exists(i) ds_list_add(rooms,room_get_name(i))
        i += 1
    }
    i = 0
    repeat(ds_list_size(rooms))
    {
        roomstr = roomstr+"#"+ds_list_find_value(rooms,i)
        i += 1
    }
    show_message(roomstr)
    ds_list_destroy(rooms)
//    show_message('SEGA_ROOM(0) TS_Room(2) STP_Room(3) BR_1(4) Menu Room(5) Menu Room2(18) BR_2(6) HILL(7) SUICIDE(71) DM(68) ...(25) YCR(20) FATAL_FOG(31) MIND(62) Act0_Room(39) Act1_Room(8) BR_2(9) HIDE_&_SEEK(10) HIDE_&_SEEEK2(52) H&S_Act(11) H&S_Act2(40) BR_3(13) BR_3_2(14) Die_Room(15) BR_4(19) BR_5(22) BR_5_2(23) YCR_Pre(63) YCR_Act(21) room86 BR_6(24) Egg PreAct(64) Egg Act(26) BR_7(27) BR_7_2(28) BR_8(30) BR_10(78) Bad_End_Room(29) PreFF(43) FF_NoteRoom(65) FF_Act(32) DF_Act(79) PostFF(45) BR_9(33) BR_9_2(34) GOD_Room(35) Hidden_Level(36) Hidden_Fog(82) FINAL_ROOM(37) Select Room(38) TailsDeathRoom(42) Hidden_Brain(47) ENDED(49) JR(50) Continue_Room(53) Easter Scene0(56) Easter Scene(54)Easter_Scene_2(55) GirlsRoom(57) GoodEndCutscene(67) FinalBattle(66) PreRise(83) Rise_Room(69) SuicideAct(70) BR_10(72) BR_11(80) BadFinal(73) WorstEnding1 (75) BestEnding(76) Average Endings(81) AverageCutscene(84) WorstCredits(85))')
}
else
{
    if room_exists(assiny) room_goto(assiny)
    else
    {
        rooms = ds_list_create()
        repeat(room_last+1)
        {
            if room_exists(i) ds_list_add(rooms,room_get_name(i))
            i += 1
        }
        i = 0
        repeat(ds_list_size(rooms))
        {
            roomstr = roomstr+"#"+ds_list_find_value(rooms,i)
            i += 1
        }
        show_message(roomstr)
        ds_list_destroy(rooms)
    }
}
#define Keyboard_104
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=611
relative=0
applies_to=self
var_name=assinylives
var_value=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
assinylives = get_integer('input lives number',assinylives)
global.TLive = assinylives
global.KLive = assinylives
global.ELive = assinylives
global.FLive = assinylives
global.SLive = assinylives
#define Keyboard_105
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
show_message(room)
