if(state_new) //if object enters state for the first time
{
    image_speed = 0;
    image_index = 0;
}
key = obj_player.purple_key;
if (obj_player.space && distance_to_object(obj_player)<5 && key) //if player actions near door
state_switch("open") //switch to open

