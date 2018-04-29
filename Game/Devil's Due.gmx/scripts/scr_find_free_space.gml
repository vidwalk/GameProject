///Find a free space in the npc grid_ai
while(!mp_grid_path(global.grid_ai, path, x, y, roam_x2*obj_grid_ai.cell_width-obj_grid_ai.cell_width/2, roam_y2*obj_grid_ai.cell_height-obj_grid_ai.cell_height/2,1)) //While theres a path and a collision with solid objects    
{

    roam_x2 = irandom_range(1,room_width/obj_grid_ai.cell_width); //Keep shuffling the 2nd patrol coords
    roam_y2 = irandom_range(1,room_height/obj_grid_ai.cell_height); //Keep shuffling the 2nd patrol coords
}

