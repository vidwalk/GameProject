//Possessing state

scr_player_getInput() //get input

if (state_new)
{
    obj_player.visible = 0; //make player invis when poss
}

if (obj_player.weapons_grid[1,2] < obj_player.weapons_grid[1,11])
obj_player.weapons_grid[1,2] += obj_player.deagle_regen/room_speed/4;

 //if you press V you terminate the possession


if (obj_player.possession_shield <= 0)
{
state_switch("notPossessing");
scr_lose_weapon(obj_player,currently_possessed_enemy);
with(obj_player_possess.currently_possessed_enemy)
instance_destroy()
}

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

with (currently_possessed_enemy)
{
if (insanity<100)
insanity+=insanity_rate/room_speed;
}

if (instance_exists(currently_possessed_enemy))
if (currently_possessed_enemy.insanity >= 100)
{
state_switch("notPossessing");
scr_lose_weapon(obj_player,currently_possessed_enemy);
obj_player.possession_shield = 0;
with(obj_player_possess.currently_possessed_enemy)
instance_destroy()
}
