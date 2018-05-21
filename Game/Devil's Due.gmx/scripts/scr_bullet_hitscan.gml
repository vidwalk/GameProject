 

if (argument[0].weapons_grid[argument[0].currently_equipped_weapon,2]>0) //check ammo
{
distance = 0; //distance reset
range = argument[0].weapons_grid[argument[0].currently_equipped_weapon,6];
randomshot = random_range(-argument[0].weapons_grid[argument[0].currently_equipped_weapon,8],argument[0].weapons_grid[argument[0].currently_equipped_weapon,8]); //init random shot, give each shot a bit of randomness
while (distance < range) //if distance is lower than range
{
    with(argument[2].currently_possessed_enemy)
    argument[1].target = collision_line(argument[0].x,argument[0].y,argument[0].x+lengthdir_x(argument[1].distance,argument[0].dir+argument[1].randomshot),argument[0].y+lengthdir_y(argument[1].distance,argument[0].dir+argument[1].randomshot),obj_targetable,false,true) //set target
    if (target) //if you  met target
    {
    //Engage target
    if (instance_exists(obj_enemy))
    {
    if (target.object_index == obj_enemy.object_index && target.state_name!= "dazed")
    with (target)
    {
    if (state_name!="engaged" && state_name!="alert")
    state_switch("alert");
    else if (state_name == "alert")
    {
    path_end();
    player_x = obj_player.x;
    player_y = obj_player.y;
    alert_chase_stop = false;
    alarm[2] = room_speed*alert_chase_timer;
    if (mp_grid_path(global.grid_ai,path,x,y,player_x,player_y,1))
    path_start(path,spd,path_action_stop,0)
    }
    }
    }
    //Play sound
    var sound = audio_play_sound_at(target.hit_sound[irandom_range(0,array_length_1d(target.hit_sound)-1)],target.x,target.y,0,100,600,1,false,2);
    audio_sound_pitch(sound, random_range(0.5,1));
    // substract ammo
    with (obj_player)
    if (!place_meeting(x,y,obj_scoreboard)) // add shots fired to scoreboard
    obj_scoreboard.shots_fired++;
    argument[0].weapons_grid[argument[0].currently_equipped_weapon,2]-=1;
    bullet = instance_create(argument[0].x+lengthdir_x(distance,argument[0].dir+randomshot),argument[0].y+lengthdir_y(distance,argument[0].dir+randomshot),obj_bullet) //create bullet on collision point
    bullet.creator = argument[0];
    bullet.creator_fire_object = argument[1];
    //deal damage to enemy
    //if (instance_exists(obj_targetable))
    if (object_is_ancestor(target.object_index,obj_targetable)) 
    target.hp-=bullet.shot_damage;
    break;
    //if hits targetable create hit sprite
    }
    else
    distance=distance+1; //else increase the distance
}
if (!target) //haven't met any target
{
with (obj_player)
if (!place_meeting(x,y,obj_scoreboard)) // add shots fired to scoreboard
    obj_scoreboard.shots_fired++;
// substract ammo
argument[0].weapons_grid[argument[0].currently_equipped_weapon,2]-=1;
bullet = instance_create(argument[0].x+lengthdir_x(range,argument[0].dir+randomshot),argument[0].y+lengthdir_y(range,argument[0].dir+randomshot),obj_bullet) //create bullet with default range
bullet.creator = argument[0];
bullet.creator_fire_object = argument[1];
}
//Play sound
audio_play_sound_at(argument[0].weapons_grid[argument[0].currently_equipped_weapon,7],argument[0].x,argument[0].y,0,100,600,1,false,1);
}
else
if (!audio_is_playing(argument[0].weapons_grid[argument[0].currently_equipped_weapon,9]))
audio_play_sound_at(argument[0].weapons_grid[argument[0].currently_equipped_weapon,9],argument[0].x,argument[0].y,0,100,600,1,false,1);//play sound



