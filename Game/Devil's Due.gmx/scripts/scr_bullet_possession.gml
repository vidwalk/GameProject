audio_play_sound(obj_player.possession_sound,1,0); // play sound
bullet = instance_create(argument[0].x,argument[0].y,obj_bullet_possession) //create bullet
bullet.creator = argument[0]; //set bullet creator
bullet.creator_possession_object = argument[1]; //set bullet possession object
bullet.shot_angle = argument[0].dir; //set bullet angle
