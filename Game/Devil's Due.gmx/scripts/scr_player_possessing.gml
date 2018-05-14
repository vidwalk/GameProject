//Possessing state

scr_player_getInput() //get input

if (state_new)
{
    obj_player.visible = 0; //make player invis when poss
}
//regen deagle ammo
if (obj_player.weapons_grid[1,2] < obj_player.weapons_grid[1,11])
obj_player.weapons_grid[1,2] += floor(obj_player.deagle_regen);



//if possession shield breaks, destory possession
if (obj_player.possession_shield <= 0)
{
state_switch("notPossessing");
scr_lose_weapon(obj_player,currently_possessed_enemy);
with(obj_player_possess.currently_possessed_enemy)
instance_destroy()
}

// if insanity over 50 you can consume + actual consume
with (obj_player_possess)
{
if (obj_player.v && currently_possessed_enemy.insanity >= 50)
{
state_switch("notPossessing");
scr_lose_weapon(obj_player,currently_possessed_enemy);
obj_player.possession_shield = 0;
with(obj_player_possess.currently_possessed_enemy)
instance_destroy()
}
}
 // increase insanity while possessing
with (currently_possessed_enemy)
{
if (insanity<100)
insanity+=insanity_rate/room_speed;
}
// if insanity over 100 end insanity
if (instance_exists(currently_possessed_enemy))
if (currently_possessed_enemy.insanity >= 100)
{
state_switch("notPossessing");
scr_lose_weapon(obj_player,currently_possessed_enemy);
obj_player.possession_shield = 0;
with(obj_player_possess.currently_possessed_enemy)
instance_destroy()
}
