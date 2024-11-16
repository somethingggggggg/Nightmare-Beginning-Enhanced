i = 0
repeat(8)
{
    if room != 56 && room != 55 view_xview[i] += (view_wview[i] - (view_hview[i] / 3) * 4) / 2
    view_wview[i] = (view_hview[i] / 3) * 4
    view_hborder[i] = view_wview[i] / 2
    i += 1
}
if global.fourbythree = 0
{
    i = 0
    repeat(8)
    {
        if room != 56 && room != 55 view_xview[i] += (view_wview[i] - (view_hview[i] / 9) * 16) / 2
        view_wview[i] = (view_hview[i] / 9) * 16
        view_hborder[i] = view_wview[i] / 2
        i += 1
    }
}
