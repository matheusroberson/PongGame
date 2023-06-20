function handle_mode(){
	if (DEBUG) 
		handle_debug();
	else if (TESTING) 
		handle_testing();
	else if (SHIP) 
		handle_ship();
}

// Configurações de Desenvolvimento
function handle_debug() {
	show_debug_message("=====================\n\n We're in debug mode!\n\n=====================");
	show_debug_overlay(true);
}

 // Configurações de Homologação
function handle_testing() {
	show_debug_message("=====================\n\n We're in testing mode!\n\n=====================");
}  

// Configurações de Produção
function handle_ship() {} 