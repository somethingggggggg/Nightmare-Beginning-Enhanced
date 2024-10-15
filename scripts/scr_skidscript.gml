if stopping != 0
{
    stopping -= sign(stopping)
    //stupid fucking check if the frame is odd or even
    if stopping/2 = floor(stopping/2) instance_create(x+(16*sign(stopping)),bbox_bottom,obj_SkidParticle)
    obj_SkidParticle.depth = depth
    if sign(stopping) != 0 image_xscale = -sign(stopping)
    else image_xscale = 1
    acc = origacc * 2;
    sprite_index = varsprskid;
    //mask_index = sprTailsMask;
}
else
{
    acc = origacc;
}
