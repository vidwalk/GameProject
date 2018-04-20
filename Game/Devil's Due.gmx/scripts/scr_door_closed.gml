if(state_new) //if object enters state for the first time
{
    image_speed = -1; //Start animation backwards
    spr = sprite_duplicate(spr_door_purple);
    sprite_collision_mask(spr,true,1,0,0,0,0,0,0); // set collision
    sprite_index = spr;
    //mp_grid_add_rectangle(global.grid,x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2-1) //fill grid
}
if (image_index == 0) //if animation nears end
image_speed = 0; //stop it

if (obj_player.space && distance_to_object(obj_player)<5) //if player actions near door
state_switch("open") //switch to open

