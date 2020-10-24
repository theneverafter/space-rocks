// Remove one life from game
lives -= 1;
audio_play_sound(snd_die,1,false);
// Set alarm to restart room
with(obj_game){
	alarm[1] = room_speed;	
}

// Destroy ship and create debris
instance_destroy();

repeat(15){
	instance_create_layer(x,y,"Instances",obj_debris);
}