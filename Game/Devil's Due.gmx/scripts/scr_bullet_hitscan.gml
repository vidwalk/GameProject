distance = 0; //distance reset
randomshot = random_range(-3,3); //init random shot, give each shot a bit of randomness
while (distance < obj_player.range) //if distance is lower than range
{
    target = collision_line(obj_player.x,obj_player.y,obj_player.x+lengthdir_x(obj_player_fire.distance,obj_player.dir+obj_player_fire.randomshot),obj_player.y+lengthdir_y(obj_player_fire.distance,obj_player.dir+obj_player_fire.randomshot),obj_targetable,false,true) //set target
    if (target) //if you  met target
    {
    instance_create(obj_player.x+lengthdir_x(distance,obj_player.dir+randomshot),obj_player.y+lengthdir_y(distance,obj_player.dir+randomshot),obj_bullet) //create bullet on collision point
    break;
    }
    else
    distance=distance+1; //else increase the distance
}
if (!target) //haven't met any target
instance_create(obj_player.x+lengthdir_x(obj_player.range,obj_player.dir+randomshot),obj_player.y+lengthdir_y(obj_player.range,obj_player.dir+randomshot),obj_bullet) //create bullet with default range

