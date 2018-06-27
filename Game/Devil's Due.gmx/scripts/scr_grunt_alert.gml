//alert
if (state_new)
{
    path_end();
    player_x = round(obj_player.x/obj_grid_ai.cell_width)*obj_grid_ai.cell_width;
    player_y = round(obj_player.y/obj_grid_ai.cell_width)*obj_grid_ai.cell_width;
    alert_chase_stop = false;
    alarm[2] = room_speed*alert_chase_timer;
    if (mp_grid_path(global.grid_ai,path,x,y,player_x,player_y,1))
    path_start(path,spd,path_action_stop,0)
}
dir = point_direction(x,y,player_x,player_y);
vision = collision_line(x,y,obj_player.x,obj_player.y,obj_solid,0,1);
if (distance_to_object(obj_player)<= engage_range && state_name =="alert" && !vision)
state_switch("engaged");

if ((distance_to_object(obj_player) > alert_range || vision) && alert_chase_stop)
state_switch(default_state);

if (!vision && distance_to_object(obj_player) <= alert_range)
{
 player_x = round(obj_player.x/obj_grid_ai.cell_width)*obj_grid_ai.cell_width;
 player_y = round(obj_player.y/obj_grid_ai.cell_width)*obj_grid_ai.cell_width;
if (mp_grid_path(global.grid_ai,path,x,y,player_x,player_y,1))
path_start(path,spd,path_action_stop,0)
}

//Death
if (hp <= 0)
state_switch("dead");
