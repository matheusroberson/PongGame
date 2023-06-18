if (alarm_get(0) == -1) {
	vertical_speed = movement * obj_speed;
	handle_colision_vertical_in_edge(set_y, vertical_speed)
	x += obj_speed * movement_horizontal;
}

if (x <= 0) 
	handle_destroyed_ball(obj_enemy);
 else if (x >= window_get_width()) 
	handle_destroyed_ball(obj_player);
