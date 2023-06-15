moviment = -keyboard_check(ord("W"))+keyboard_check(ord("S"));
vertical_speed = moviment * obj_speed;

function setY (num = 0) {
    y += num;
}

function handleColisionPlayer(setter, distance, isVertical) {
	X = x;
	Y = y;
	xSign = 0;
	ySign = 0;
	
	if (isVertical == false) {
		X = x + distance;
		xSign += sign(distance);
	} else {
		Y = y + distance;
		ySign += sign(distance);
	}
	
	if (place_meeting(X, Y, obj_limit)) {
		 while (!place_meeting(x + xSign, y + ySign, obj_limit)) { // obj_block need optimization
			script_execute(setter, sign(distance));
		 } 
		 distance = 0;
	}
	script_execute(setter, distance);
}

handleColisionPlayer(setY, vertical_speed, true);
