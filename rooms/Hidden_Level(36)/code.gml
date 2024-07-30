global.CheckPoint = false
if BL.End_1 = true
{
    instance_create(8080,160,RingStruction)
    instance_create(8032,80,Warn3)
}
if BL.End_2 = true
{
    instance_create(3072,240,DeadTails)
    instance_create(6176,240,DeadKnuckles)
    instance_create(7968,224,DeadEggman)
    instance_create(9520,144,Warn14)
}
