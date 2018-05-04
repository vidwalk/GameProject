if (state_new)
{

    path_end(); //end any previous paths
    
    //if he is not in the initial patrol start point, move there
    if (x != patrol_x1 || y!= patrol_y1)
    {
        if (!mp_grid_path(global.grid_ai, path, x, y, patrol_x1, patrol_y1,1))
        state_switch("roam");
        else
        path_start(path,spd,path_action_stop,1);
        patrol = 1;
    }
} 
//If he reaches either parts of the patrol, switch points and continue patrolling
if (x == patrol_x1 && y == patrol_y1)
    {
    if (mp_grid_path(global.grid_ai,path,x,y,patrol_x2,patrol_y2,1))
    path_start(path,spd,path_action_stop,1)
    patrol = 2;
    }
    
if (x == patrol_x2 && y == patrol_y2)
{
if (mp_grid_path(global.grid_ai,path,x,y,patrol_x1,patrol_y1,1))
    path_start(path,spd,path_action_stop,1)
    patrol = 1;
    }
if (patrol == 1)
dir = point_direction(x,y,patrol_x1,patrol_y1);
if (patrol == 2)
dir = point_direction(x,y,patrol_x2,patrol_y2);

//If player comes too close, engage
if (distance_to_object(obj_player)<=alert_range && state_name == "patrol")
state_switch("alert");

//Death
if (hp <= 0)
instance_destroy();

//Play footsteps
scr_tile_footsteps(obj_grunt);
