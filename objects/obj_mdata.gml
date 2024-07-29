#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Tails)
{
    if global.server = true
    {
        mplay_data_write(1,Tails.x)
        mplay_data_write(2,Tails.y)
        obj_ghost.x = mplay_data_read(3)
        obj_ghost.y = mplay_data_read(4)
    }
    if global.server = false
    {
        obj_ghost.x = mplay_data_read(1)
        obj_ghost.y = mplay_data_read(2)
        mplay_data_write(3,Tails.x)
        mplay_data_write(4,Tails.y)
    }

}
//mplay_data_write(1,Tails.x)

//obj_ghost.x=mplay_data_read(1)
