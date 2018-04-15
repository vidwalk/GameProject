//Grunt Idle State
if (state_new)
{
possessor = 0; //removes any previous possessors
x = fix_x; //fixes x coord
y = fix_y; //fixes y coord
dir = irandom_range(0,360); //give it a random direction everytime it enters idle state
}
//Bullet finding target and dealing damage 
if (place_meeting(x,y,obj_bullet))
{
hp -= obj_bullet.shot_damage;
}

//Death
if (hp <= 0)
instance_destroy();
