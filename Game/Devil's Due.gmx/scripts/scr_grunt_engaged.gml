    //engaged
if (state_new)
{
    path_end();
}
dir = point_direction(x,y,obj_player.x,obj_player.y);

if (distance_to_object(obj_player)<=weapons_grid[currently_equipped_weapon,6])
{
//End the path
path_end()
if (can_fire_bullet)
{
//Set alarm for cooldown and reset firing boolean
var fire_stop;
if (irandom_range(1,100)>50)
fire_stop = irandom_range(1,firing_random_cooldown)
else
fire_stop = 1;
alarm[0] = room_speed*weapons_grid[currently_equipped_weapon,5]*fire_stop; 
can_fire_bullet = false;
//Fire Projectile
muzzle_flash = true;
scr_enemy_bullet_hitscan(id);

}
}
else
{
    if (mp_grid_path(global.grid_ai, path, x, y, obj_player.x, obj_player.y,1))
    path_start(path,spd,path_action_stop,0);
}
if (distance_to_object(obj_player) > engage_range)
state_switch("alert")

//Death
if (hp <= 0)
instance_destroy();

//check if still in line of sight
vision = collision_line(x,y,obj_player.x,obj_player.y,obj_solid,0,1);
if (vision)
state_switch("alert")

