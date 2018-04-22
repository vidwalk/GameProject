if (state_new)
{
        path_end();      //End any previous paths
    if (mp_grid_path(global.grid_ai,path,x,y,patrol_x2*obj_grid_ai.cell_width-obj_grid_ai.cell_width/2,patrol_y2*obj_grid_ai.cell_height-obj_grid_ai.cell_height/2,1)) //If you find suitable path
    {    
        dir = point_direction(x,y,patrol_x2*obj_grid_ai.cell_width-obj_grid_ai.cell_width/2,patrol_y2*obj_grid_ai.cell_height-obj_grid_ai.cell_height/2) //Switch direction to it
        path_start(path, spd, path_action_stop, true); //Start path
    }
}
    
if (path_index == -1) //If path ends
{
    state_switch("idle"); //Switch to Idle
}

