#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.09
if global.hardmode sprite_index = sprRedCoin
visible = 1
#define Collision_AllPers
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_change(RingOut,Coin);
sound_play(global.S_CoinCollect)
if global.hardmode=0{global.rings+=1}
if global.hardmode=1{global.rings-=1}
instance_destroy()
