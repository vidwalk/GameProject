//Run State
//Get Input
scr_player_getinput();
//How to move
scr_player_movement();
//Aim towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);
//Switch to idle state if not moving
if (moving == false)
state_switch("idle");
//Verify collision then move
scr_player_collision();
