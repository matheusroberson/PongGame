#region SETTER FUNCTION TO VERTICAL
	/// @desc Setter Function
	/// @param {real} [_num]=0 
	function set_y(_num = 0){
		self.y += _num;
	}
#endregion

#region COLISION VERTICAL OR/AND HORIZONTAL
	/**
	* Function handle_colision_player(_setter, _distance, _obj, _is_vertical)
	* @param {function} _setter function to set y or x
	* @param {real} _distance vertical_speed or horizontal_speed
	* @param {asset.GMObject} _obj object to check colision
	* @param {bool} _is_vertical boolean to check if is vertical or horizontal
	*/
	function handle_colision_player(_setter, _distance, _obj, _is_vertical) {
		var _x = self.x, _y = self.y;
		var _x_sign = 0, _y_sign = 0;

		if (_is_vertical) {
			_y = self.y + _distance;
			_y_sign += sign(_distance);
		} else {
			_x = self.x + _distance;
			_x_sign += sign(_distance);
		}

		if (place_meeting(_x, _y, _obj)) {
			while (!place_meeting(self.x + _x_sign, self.y + _y_sign, _obj)) {
				script_execute(_setter, sign(_distance));
			} 
			_distance = 0;
		}
		script_execute(_setter, _distance);
	}
	
	
	/**
	 * Function handle_colision_vertical_in_edge(_setter, _distance)
	 * @param {function} _setter function to set x or y
	 * @param {real} _distance vertical_speed or horizontal_speed
	 */
	function handle_colision_vertical_in_edge(_setter, _distance) {
		var _y = self.y + _distance,
			_y_sign = sign(_distance);
		 _width = window_get_width();
		 _height = window_get_height();
		 _width_sprite = self.sprite_width / 2;
		
		var _point_in_rectangle_up = function (_value) {
			return point_in_rectangle(self.x, _value, 0, 0, _width, _width_sprite);
		}
		
		var _point_in_rectangle_down = function (_value) {
			return point_in_rectangle(self.x, _value, 0, _height - _width_sprite, _width,_height)
		}
		
			if (_point_in_rectangle_up(_y) || _point_in_rectangle_down(_y)) {
	        
			while (!_point_in_rectangle_up(self.y + _y_sign) && !_point_in_rectangle_down(self.y + _y_sign)) {
	            script_execute(_setter, sign(_distance));
	        }
        
			_distance = 0;
			self.movement = -self.movement;
			audio_play_sound(snd_collision_ball, 10, false);
		}
		script_execute(_setter, _distance);
	}
#endregion
