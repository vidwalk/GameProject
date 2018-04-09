distance = 0; //distance reset
range = argument[0].weapons_grid[argument[0].currently_equipped_weapon,6];
randomshot = random_range(-3,3); //init random shot, give each shot a bit of randomness
while (distance < range) //if distance is lower than range
{
    target = collision_line(argument[0].x,argument[0].y,argument[0].x+lengthdir_x(argument[1].distance,argument[0].dir+argument[1].randomshot),argument[0].y+lengthdir_y(argument[1].distance,argument[0].dir+argument[1].randomshot),obj_targetable,false,true) //set target
    if (target) //if you  met target
    {
    bullet = instance_create(argument[0].x+lengthdir_x(distance,argument[0].dir+randomshot),argument[0].y+lengthdir_y(distance,argument[0].dir+randomshot),obj_bullet) //create bullet on collision point
    bullet.creator = argument[0];
    break;
    }
    else
    distance=distance+1; //else increase the distance
}
if (!target) //haven't met any target
instance_create(argument[0].x+lengthdir_x(range,argument[0].dir+randomshot),argument[0].y+lengthdir_y(range,argument[0].dir+randomshot),obj_bullet) //create bullet with default range

//Play sound
emitter = audio_emitter_create()
audio_emitter_position(emitter, argument[0].x,argument[0].y,0);
audio_play_sound(argument[0].weapons_grid[argument[0].currently_equipped_weapon,7],1,0);
audio_emitter_free(emitter);


