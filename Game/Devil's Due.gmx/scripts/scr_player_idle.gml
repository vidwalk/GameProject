//Idle State
//Get Input
scr_player_getInput();
//How to move
scr_player_movement();
//Change sprite
sprite_index = spr_player_idle;
//Aim towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);
//Switch to run state if moving
if (moving == true)
state_switch("run");
//Switch to fire state if pressing button and can fire
if (fire && canfire)
{
with (obj_player_fire)
state_switch("fire");
}
