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
if (fire && canfire)
{
with (obj_player_fire)
state_switch("fire");
}



