//Loop through all tile layers and play sound accordingly
var i=0;
for (i=0;i<argument[0].tile_layers;i++)
{
var tile = tile_layer_find(argument[0].footsteps_array[0,i],argument[0].x,argument[0].y);
if (tile)
break;
}

if (tile && argument[0].footsteps_can_play)
{
argument[0].footsteps_can_play = false;
argument[0].alarm[2] = argument[0].footsteps_audio_cd*room_speed;
audio_play_sound_at(argument[0].footsteps_array[irandom_range(1,array_height_2d(argument[0].footsteps_array)-1),i],argument[0].x,argument[0].y,0,100,300,1,0,1);
}
