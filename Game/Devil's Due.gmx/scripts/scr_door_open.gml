if (state_new) //If object enters state for the first time
{
    obj_scoreboard.doors_opened++; // add to opened doors;
    audio_play_sound_at(open_sound,x,y,0,100,600,1,false,1); // play sound
    image_speed = 1; //Start animation
    mp_grid_clear_cell(global.grid_ai,floor(x/obj_grid_ai.cell_width),floor(y/obj_grid_ai.cell_height));
    mp_grid_clear_cell(global.grid_ai,floor((x-sprite_width/2)/obj_grid_ai.cell_width),floor((y-sprite_height/2)/obj_grid_ai.cell_height));
    mp_grid_clear_cell(global.grid_ai,floor((x)/obj_grid_ai.cell_width),floor((y-sprite_height/2)/obj_grid_ai.cell_height));
}
if (image_index == 2)
{
image_speed = 0;
sprite_index = open;
}
