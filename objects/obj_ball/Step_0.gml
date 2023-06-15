vertical_speed = movement * obj_speed;

function setY (num = 0) {
    y += num;
}

if (alarm_get(0) == -1) {
	handle_colision_vertical_in_edge(setY, vertical_speed);
	x += obj_speed * movement_horizontal;
}

if (x <= 0) {
	obj_enemy.points += 1;
	instance_destroy();
	audio_play_sound(snd_wrong_answer, 10, false);
} else if (x >= window_get_width()) {
	obj_player.points += 1;
	instance_destroy();
	audio_play_sound(snd_wrong_answer, 10, false);
}