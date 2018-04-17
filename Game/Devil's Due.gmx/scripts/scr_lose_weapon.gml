//Lose Weapon 
//set wep to false, change current wep to before
argument[1].weapons_grid[argument[1].currently_equipped_weapon,2]+=argument[0].weapons_grid[argument[1].currently_equipped_weapon,2];
argument[0].weapons_grid[argument[1].currently_equipped_weapon,2]=0;
argument[0].weapons_grid[argument[1].currently_equipped_weapon,3] = false;
argument[0].currently_equipped_weapon = argument[0].weapon_before_possession;

