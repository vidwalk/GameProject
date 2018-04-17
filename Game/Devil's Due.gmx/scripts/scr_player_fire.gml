//Fire State
//Set alarm for cooldown and reset firing boolean
obj_player.alarm[0] = room_speed*obj_player.weapons_grid[obj_player.currently_equipped_weapon,5]; 
obj_player.can_fire_bullet = false;
//Fire Projectile
scr_bullet_hitscan(obj_player, obj_player_fire, obj_player_possess);
//Switch to not firing
state_switch("notFire");
