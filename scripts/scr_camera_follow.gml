view_xview[view_current] = x - view_wview[view_current]/2
view_yview[view_current] = y - view_hview[view_current]/2

view_xview[view_current] = clamp(view_xview[view_current],0,room_width - view_wview[view_current])
view_yview[view_current] = clamp(view_yview[view_current],0,room_height - view_hview[view_current])
