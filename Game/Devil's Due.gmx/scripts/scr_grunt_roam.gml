if (state_new)
{
    sprite_index = sprite_run;
    image_speed = 0.1;
        path_end();      //End any previous paths
    if (mp_grid_path(global.grid_ai,path,x,y,obj_grid_ai.cell_width-obj_grid_ai.cell_width/2,roam_y2*obj_grid_ai.cell_height-obj_grid_ai.cell_height/2,0)) //If you find suitable path
    {    
        dir = point_direction(x,y,roam_x2*obj_grid_ai.cell_width-obj_grid_ai.cell_width/2,roam_y2*obj_grid_ai.cell_height-obj_grid_ai.cell_height/2) //Switch direction to it
        path_start(path, spd, path_action_stop, true); //Start path
    }
}
    
if (path_index == -1) //If path ends
{
    state_switch("idle"); //Switch to Idle
}

//If player comes too close, engage
if (distance_to_object(obj_player)<=engage_range && obj_player_possess.state_name != "possessing")
state_switch("engaged");

