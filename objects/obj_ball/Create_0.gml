y_offset = 64;
seconds = 2;
obj_speed = global.ball_speed;
movement = choose(1, -1);
movement_horizontal = choose(1, -1);
vertical_speed = 0;

visible = false;
alarm[0] = game_get_speed(gamespeed_fps) * seconds;


#region FUNCTION
	function handle_destroyed_ball(_obj) {
		_obj.points += 1;
		instance_destroy();
		audio_play_sound(snd_wrong_answer, 10, false);
	}
#endregion