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

