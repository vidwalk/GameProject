//Reset currently possessed enemy
if (state_new)
{
    obj_player.visible = 1;
    obj_player_possess.currently_possessed_enemy = 0; //reset poss
    obj_player_possess.currently_possessed_enemy_type = 0; //reset poss type
}
