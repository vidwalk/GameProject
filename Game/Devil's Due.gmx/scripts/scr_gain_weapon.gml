//Gain Weapon + add ammo
//Set argument 0's weapon to true, save weapon status before possession, change current wep, add ammo from npc
argument[0].weapon_boolean = argument[0].weapons_grid[argument[1].currently_equipped_weapon,3];
argument[0].weapons_grid[argument[1].currently_equipped_weapon,3] = true;
argument[0].weapon_before_possession = argument[0].currently_equipped_weapon;
argument[0].currently_equipped_weapon = argument[1].currently_equipped_weapon;
argument[0].weapons_grid[argument[1].currently_equipped_weapon,2]+=argument[1].weapons_grid[argument[1].currently_equipped_weapon,2];
argument[1].weapons_grid[argument[1].currently_equipped_weapon,2]=0;

