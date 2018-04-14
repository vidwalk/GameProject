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
if (lclick && can_fire_bullet)
{
with (obj_player_fire)
state_switch("fire");
}
//Shoot possession bullet if pressing button and can shoot
if (ctrl && can_fire_possession_bullet)
{

can_fire_possession_bullet = false; //switch fire boolean to false
alarm[1] = room_speed*obj_player.possession_cd; //Set possession_cd reset alarm
scr_bullet_possession(obj_player, obj_player_possess) //possession bullet
}

