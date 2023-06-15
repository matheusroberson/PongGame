/// @description Global Object
global.cached_font = false;
global.cached_text = 0; 

global.ball_speed = 6; // Velocidade da bola
global.players_speed = 8; // Velocidade dos jogadores
global.players_yscale_image = 0.5; // Aumento de escalo

instance_create_depth(896, 384, 0, obj_enemy);
instance_create_depth(64, 352, 0, obj_player);

