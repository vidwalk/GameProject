if(state_new) //if object enters state for the first time
{
    image_speed = 0;
    image_index = 0;
}


if (obj_player.space && distance_to_object(obj_player)<5) //if player actions near door
{
if (instance_exists(obj_door_purple))
if (id.object_index == obj_door_purple.object_index)
key = obj_player.purple_key;

if (instance_exists(obj_door_green))
if (id.object_index == obj_door_green.object_index)
key = obj_player.green_key;

if (instance_exists(obj_door_red))
if (id.object_index == obj_door_red.object_index)
key = obj_player.red_key;

if (key)
state_switch("open") //switch to open
}

