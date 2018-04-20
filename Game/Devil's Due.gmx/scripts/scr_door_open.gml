if (state_new) //If object enters state for the first time
{
    image_speed = 1; //Start animation
    spr = sprite_duplicate(spr_door_purple);
    sprite_collision_mask(spr,false,2,0,0,0,0,0,0); // set collision
    sprite_index = spr;
   // mp_grid_clear_rectangle(global.grid,x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2-1) //Open up grid
}
if (image_index == image_number-1) //If animation ends
image_speed = 0; //Stop animation

if (obj_player.space && distance_to_object(obj_player)<5) //If player actions near the door 
state_switch("closed") //switch to closed

