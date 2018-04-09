//Input from player
key_up = -keyboard_check(ord('W')) //Up
key_down = keyboard_check(ord('S')) //Down
key_left = -keyboard_check(ord('A')) //Left
key_right = keyboard_check(ord('D')) //Right

fire = mouse_check_button(mb_left); //Shooting button

scroll_up = mouse_wheel_up(); //scroll up
scroll_down = mouse_wheel_down(); //scroll down
