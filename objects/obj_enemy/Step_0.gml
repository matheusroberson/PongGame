movement = -keyboard_check(ord("W"))+keyboard_check(ord("S"));
vertical_speed = movement * obj_speed;

handle_colision_player(set_y,  vertical_speed, obj_limit, true);
