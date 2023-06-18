/// @desc Function handle_start_game()
function handle_start_game() {
    randomise(); // Ativivando a verdadeira randomização
    instance_create_layer(window_get_width() / 2, window_get_height() / 2, "Instances", obj_ball);
}

/**
 * Function handle_points_menu(_position, _points)
 * @param {real} _position position horizontal in screen to draw_text()
 * @param {real} _points variable points object
 */
function handle_points_menu(_position, _points) {
    if(!global.cached_font) {
		custom_color = $C7C9C5;
		fnt_pong = font_add("fonts/JustMyType-KePl.ttf", 128, false, false, 32, 127);
		draw_set_color(custom_color);
	    draw_set_font(fnt_pong);

        global.cached_font = true;
    }
    
    if (global.cached_text != _points) {
        global.cached_text = _points;
    }

    draw_text(_position, 16, string(global.cached_text));
}