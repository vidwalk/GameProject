if (state_new) //If object enters state for the first time
{
    image_speed = 1; //Start animation
    mp_grid_clear_cell(global.grid_ai,floor(x/obj_grid_ai.cell_width),floor(y/obj_grid_ai.cell_height));
}
if (image_index == 2)
{
image_speed = 0;
sprite_index = open;
}
