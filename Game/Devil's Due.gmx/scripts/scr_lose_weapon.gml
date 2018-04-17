//Lose Weapon 
//set wep to false, change current wep to before
argument[0].weapons_grid[argument[1],3] = false;
argument[0].currently_equipped_weapon = argument[0].weapon_before_possession;
