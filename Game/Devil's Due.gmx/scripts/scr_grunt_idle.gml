//Grunt Idle State
if (state_new)
possessor = 0;
//Bullet finding target and dealing damage 
if (place_meeting(x,y,obj_bullet))
{
hp -= obj_bullet.shot_damage;
}

//Death
if (hp <= 0)
instance_destroy();
