//Gain Weapon
//Set argument 0's weapon to true, save weapon before possession, change current wep
argument[0].weapons_grid[argument[1],3] = true;
argument[0].weapon_before_possession = argument[0].currently_equipped_weapon;
argument[0].currently_equipped_weapon = argument[1];
