//Run State
//Get Input
scr_player_getInput();

//How to move
scr_player_movement();

//Change Sprite + Change Animation Speed
sprite_index = spr_player_run;
image_speed = 0.2;

//Aim towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);

//Switch to idle state if not moving
if (moving == false)
state_switch("idle");

//Verify collision then move
scr_player_collision();


//Switch to fire state if pressing button and can fire 
if (lclick && can_fire_bullet)
{
with (obj_player_fire)
state_switch("fire");
}
//Shoot possession bullet if pressing button and can shoot
if (ctrl && can_fire_possession_bullet && possession_charges > 0)
{
possession_charges--;
can_fire_possession_bullet = false; //switch fire boolean to false
alarm[1] = room_speed*obj_player.possession_cd; //Set possession_cd reset alarm
scr_bullet_possession(obj_player, obj_player_possess) //possession bullet
}
//Play footsteps
scr_tile_footsteps(obj_player);





