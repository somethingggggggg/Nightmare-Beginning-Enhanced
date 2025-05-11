#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DeathZone=1
DeathZoneAct=0
DeathZoneY=485
Track=0
TrackDelay=0
Border=1
Fade=-1
Check=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TrackDelay=0
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Fade=-1;Functions.Track=2
with AllPers{x=4806;y=576;global.vel=0;Bot=3;Idie_mode=0;canMove=1;canSpriteChange=1;gravity=0.25
with FinalSonic{sprite_index=sprSonicJump};with DM_Sonic{if Hyper_mode=0{sprite_index=sprSonicJump};if Hyper_mode>0{sprite_index=sprHyperJump}};
with DM_Tails{sprite_index=sprTailsJump};with HvostStand{vspeed=0;x=4806;y=576};with DM_Knuckles{sprite_index=sprKnucklesJump};
with ScrapEggman{sprite_index=sprScrapEggmanJump};with MS_Sonic{sprite_index=sprMS_Jump}}
SolidLineVer.mask_index=sprSolidLineVer;SolidLineHor.mask_index=sprSolidLineHor;Solid.mask_index=sprSolid
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Fade=-1;Functions.Track=1;sound_play(global.S_PowerDown);Cam.x=AllPers.x;Cam.y=300
Check=1
with AllPers{x=5240;y=380;global.vel=0;hspeed=0}
with HvostStand{vspeed=0;hspeed=0;x=5240;y=380};
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(FinalSonicDeath){Border=10;DeathZone=2}


if instance_exists(AllPers){

if DeathZone=1{ //Out of bound
if DeathZoneAct=0{
if AllPers.y>DeathZoneY && AllPers.vspeed>=0{
DeathZoneAct=1
with AllPers{
instance_create(x,y,FinalSonicDeath);instance_destroy()}}}}}


//Borders
if instance_exists(AllPers){
if Border=1{
if AllPers.x>6640{
AllPers.x=6640;AllPers.hspeed=0;global.vel=0}}}


//Check
if instance_exists(AllPers){
if Check=1{
AllPers.vspeed=-1.5
if AllPers.y<333 && AllPers.vspeed<0{Check=0;DeathZone=1;PipeCheck2.Act=0;
SolidLineVer.mask_index=sprSolidLineVer;SolidLineHor.mask_index=sprSolidLineHor;Solid.mask_index=sprSolid
if instance_exists(Goomba){with Goomba{Hit=1;Move=1;image_speed=0.16}}
if instance_exists(Koopa){with Koopa{Hit=1;Move=1;image_speed=0.16}}
with AllPers{global.vel=0;Bot=3;canMove=1;canSpriteChange=1;vspeed=0;gravity=0.25}}}}


//Track
if Track=1{
if TrackDelay=0{
if !sound_isplaying(global.S_World1_1){
TrackDelay=1;alarm[0]=15;sound_play(global.S_World1_1)}}}

if Track=2{
if TrackDelay=0{
if !sound_isplaying(global.S_Underground){
TrackDelay=1;alarm[0]=15;sound_play(global.S_Underground)}}}


//Fade
if Fade=-1{
background_alpha[7]-=0.02

if background_alpha[7]<0{
background_alpha[7]=0;Fade=0}}


if Fade=1{
background_alpha[7]+=0.02

if background_alpha[7]>1{
background_alpha[7]=1;Fade=0
Background.Back=2;Track=0;sound_stop(global.S_World1_1);PipeCheck.Act=0;Cam.x=4737+170;Cam.y=750;Cam.Stage=1;alarm[1]=45}}


if Fade=2{
background_alpha[7]+=0.02

if background_alpha[7]>1{
background_alpha[7]=1;Fade=0
Background.Back=1;Track=0;sound_stop(global.S_Underground);PipeCheck2.Act=3;Cam.Stage=0;alarm[2]=45}}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
