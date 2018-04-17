//Possessing state

scr_player_getInput() //get input

if (state_new)
{
    obj_player.visible = 0; //make player invis when poss
}
 //if you press V you terminate the possession
if (v)
{
with (obj_player_possess)
state_switch("notPossessing");
scr_lose_weapon(obj_player,currently_possessed_enemy);
with(obj_player_possess.currently_possessed_enemy)
instance_destroy()
}
