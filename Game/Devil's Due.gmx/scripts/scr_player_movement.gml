//Direction
hmove = key_left+key_right;
vmove = key_up+key_down;
//Apply Pythagora if moving diagonally
if (diag)
{
hsp = (movespeed*hmove/sqrt(2));
vsp = (movespeed*vmove/sqrt(2));
}
//Else move normally
else if (!diag)
{
hsp = movespeed*hmove;
vsp = movespeed*vmove;
}
//Movement boolean
if (hsp != 0 || vsp !=0)
moving = true;
else 
moving = false;
