if (state_new)
{
sprite_index = sprite_idle;
image_speed = 1;
dazed_timer_done = false; 
alarm[1] = dazed_timer*room_speed
x = fix_x;
y = fix_y;
}

if (dazed_timer_done == true)
state_switch(default_state)

//Death
if (hp <= 0)
state_switch("dead");
