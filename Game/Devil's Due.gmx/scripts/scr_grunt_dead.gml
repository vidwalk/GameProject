if (state_new)
{
path_end();
sprite_index = sprite_dead;
alarm[3] = room_speed*death_timer;

if (obj_player.possession_charges < obj_player.possession_charges_max)
obj_player.possession_charges++;

//add death to scoreboard
with (obj_player)
if (!place_meeting(x,y,obj_scoreboard))
obj_scoreboard.killed_enemies++;
}
