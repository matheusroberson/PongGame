/// @description Global Object
#region VARIABLES GLOBAL 
	global.cached_font = false;
	global.cached_text = 0; 
#endregion

#region CONSTANTS
	#macro BALL_SPEED  6
	#macro PLAYERS_SPEED 8
	#macro PLAYERS_YSCALE_IMAGE 0.5
	
	#macro DEBUG false
	#macro TESTING true
	#macro SHIP false
#endregion

#region ENVIRONMENT
	#macro debug:DEBUG true
	#macro testing:TESTING true
	#macro ship:SHIP true
	handle_mode();
#endregion

instance_create_depth(864, 384, 0, obj_enemy);
instance_create_depth(64, 352, 0, obj_player);

handle_start_game();