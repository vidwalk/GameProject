//Possessed
if (state_new)
{
path_end();
    idle_timer_done = false;
}
//Update position and dir of enemy according to possessor's
x = possessor.x;
y = possessor.y;
dir = possessor.dir;
//If possessor moves, change sprite
if (possessor.moving == true)
{
sprite_index = sprite_run;
image_speed = 0.1;
}
else
{
sprite_index = sprite_idle;
image_speed = 1;
}

