y_offset = 64;
seconds = 2;
vertical_speed = 0;
obj_speed = global.ball_speed;
movement = choose(1, -1);
movement_horizontal = choose(1, -1);

visible = false;
alarm[0] = game_get_speed(gamespeed_fps) * seconds;

function handle_colision_vertical_in_edge(setter, distance) {
	Y = y + distance;
	ySign = sign(distance);
	
	if (    
	    point_in_rectangle(x, Y, 0, 0, window_get_width(), sprite_width / 2) ||
	    point_in_rectangle(x, Y, 0, window_get_height() - sprite_width / 2, window_get_width(), window_get_height())
	    ) {
	        
		while (
			(!point_in_rectangle(x, y + ySign, 0, 0, window_get_width(), sprite_width / 2)) &&
			(!point_in_rectangle(x, y + ySign, 0, window_get_height() - sprite_width / 2, window_get_width(), window_get_height()))
		) {
            script_execute(setter, sign(distance));
        }
        
		distance = 0;
		movement = -movement;
		audio_play_sound(snd_collision_ball, 10, false);
	}
	script_execute(setter, distance);
}