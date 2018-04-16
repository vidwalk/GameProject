distance = 0; //distance reset
range = argument[0].weapons_grid[argument[0].currently_equipped_weapon,6];
randomshot = random_range(-argument[0].weapons_grid[argument[0].currently_equipped_weapon,8],argument[0].weapons_grid[argument[0].currently_equipped_weapon,8]); //init random shot, give each shot a bit of randomness
while (distance < range) //if distance is lower than range
{
    with(argument[2].currently_possessed_enemy)
    argument[1].target = collision_line(argument[0].x,argument[0].y,argument[0].x+lengthdir_x(argument[1].distance,argument[0].dir+argument[1].randomshot),argument[0].y+lengthdir_y(argument[1].distance,argument[0].dir+argument[1].randomshot),obj_targetable,false,true) //set target
    if (target) //if you  met target
    {
    //Play sound
    audio_play_sound_at(target.hit_sound[irandom_range(0,array_length_1d(target.hit_sound)-1)],target.x,target.y,0,100,600,1,false,2);
    
    bullet = instance_create(argument[0].x+lengthdir_x(distance,argument[0].dir+randomshot),argument[0].y+lengthdir_y(distance,argument[0].dir+randomshot),obj_bullet) //create bullet on collision point
    bullet.creator = argument[0];
    bullet.creator_fire_object = argument[1];
    break;
    }
    else
    distance=distance+1; //else increase the distance
}
if (!target) //haven't met any target
bullet = instance_create(argument[0].x+lengthdir_x(range,argument[0].dir+randomshot),argument[0].y+lengthdir_y(range,argument[0].dir+randomshot),obj_bullet) //create bullet with default range
bullet.creator = argument[0];
bullet.creator_fire_object = argument[1];
//Play sound
audio_play_sound_at(argument[0].weapons_grid[argument[0].currently_equipped_weapon,7],argument[0].x,argument[0].y,0,100,600,1,false,1);



