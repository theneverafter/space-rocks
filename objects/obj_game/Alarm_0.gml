/// @description Add new asteroid every few seconds
if(room != rm_game){
	// don't reset the alarm if the game is over
	exit;
}

if(choose(0,1) == 0){
	// spawn asteroid from side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// spawn asteroid from top/bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx,yy,"Instances",obj_asteroid);

// reset the alarm
alarm[0] = 4*room_speed;