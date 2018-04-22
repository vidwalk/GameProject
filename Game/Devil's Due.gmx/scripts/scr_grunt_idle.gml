//Grunt Idle State
if (state_new)
{
idle_timer_done = false; //reset idle timer
alarm[0] = room_speed*idle_timer; //set idle timer

 patrol_x1 = x; //1st patrol coord X
 patrol_y1 = y; //1st patrol coord y
 patrol_x2 = irandom_range(1,room_width/obj_grid_ai.cell_width); //2nd patrol coord X
 patrol_y2 = irandom_range(1,room_height/obj_grid_ai.cell_height); //2nd patrol coord Y
 scr_find_free_space(); //Script to find a free space in the grid

//x = fix_x;
//y = fix_y;

possessor = 0; //removes any previous possessors

dir = irandom_range(0,360); //give it a random direction everytime it enters idle state
}
//Bullet finding target and dealing damage 
if (place_meeting(x,y,obj_bullet))
{
hp -= obj_bullet.shot_damage;
}
//If you stay idle for too long change to roam
if (idle_timer_done)
state_switch("roam");
//Death
if (hp <= 0)
instance_destroy();
