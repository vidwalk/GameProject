//Grunt Idle State
if (state_new)
{
//idle_timer_done = false; //reset idle timer
//alarm[0] = room_speed*idle_timer; //set idle timer

// roam_x1 = x; //1st patrol coord X
// roam_y1 = y; //1st patrol coord y
// roam_x2 = irandom_range(1,room_width/obj_grid_ai.cell_width); //2nd roam coord X
// roam_y2 = irandom_range(1,room_height/obj_grid_ai.cell_height); //2nd roam coord Y
// scr_find_free_space(); //Script to find a free space in the grid
 
path_end(); //end any previous paths
if (x != patrol_x1 || y!= patrol_y1)
{
    if (!mp_grid_path(global.grid_ai,path,x,y,patrol_x1,patrol_y1,1))
    state_switch("roam");
    else
    path_start(path,spd,path_action_stop,1);
    patrol = 1;
}

if (patrol == 1)
dir = point_direction(x,y,patrol_x1,patrol_y1);

possessor = 0; //removes any previous possessors

//dir = irandom_range(0,360); //give it a random direction everytime it enters idle state
}
vision = collision_line(x,y,obj_player.x,obj_player.y,obj_solid,0,1);
//If player comes too close, engage
if (distance_to_object(obj_player)<=alert_range && state_name == "idle" && !vision)
state_switch("alert");


//If you stay idle for too long change to roam
//if (idle_timer_done)
//state_switch("roam");
//Death
if (hp <= 0)
instance_destroy();
