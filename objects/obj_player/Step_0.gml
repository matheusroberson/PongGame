movement = -keyboard_check(vk_up)+keyboard_check(vk_down);
vertical_speed = movement * obj_speed;

handle_colision_player(set_y,  vertical_speed, obj_limit, true);
