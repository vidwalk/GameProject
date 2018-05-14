//Reset currently possessed enemy
if (state_new)
{
    obj_player.visible = 1;
    obj_player_possess.currently_possessed_enemy = 0; //reset poss
    obj_player_possess.currently_possessed_enemy_type = 0; //reset poss type
}
if (obj_player.hp < obj_player.hp_max)
obj_player.hp += obj_player.hp_regen/room_speed;

//regen deagle ammo
if (obj_player.weapons_grid[1,2] < obj_player.weapons_grid[1,11])
obj_player.weapons_grid[1,2] += floor(obj_player.deagle_regen);
