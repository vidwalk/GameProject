//Input for player

diag = false; //If player moves diagonally

key_up = -keyboard_check(ord('W')) //Up
key_down = keyboard_check(ord('S')) //Down
key_left = -keyboard_check(ord('A')) //Left
key_right = keyboard_check(ord('D')) //Right

//If moving diagonlly, change variable
if (key_up == -1 && key_left == -1) 
diag = true;
if (key_up == -1 && key_right == 1)
diag = true;
if (key_down == 1 && key_right == 1)
diag = true;
if (key_down == 1 && key_left == -1)
diag = true;
