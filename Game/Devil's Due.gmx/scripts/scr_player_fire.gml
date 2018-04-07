//Fire State
//Set alarm for cooldown and reset firing boolean
obj_player.alarm[0] = room_speed*obj_player.firecd; 
obj_player.canfire = false;
//Fire Projectile
scr_bullet_hitscan();
//Switch to not firing
state_switch("notFire");
