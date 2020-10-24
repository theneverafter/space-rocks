// Add to score when hitting an asteroid with bullet
score += 10;
audio_play_sound(snd_die,1,false);
// Destroy the bullet on impact with an asteroid
instance_destroy();

// The "other" gives us access to the other instance involved in the collision (the asteroid in this case)
with(other){
	// Destroy the asteroid
	instance_destroy();
	
	// If it is a large or medium, break it into smaller asteroids
	if(sprite_index == spr_asteroid_large){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);	
			new_asteroid.sprite_index = spr_asteroid_med;
		}
	} else if(sprite_index == spr_asteroid_med){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	// No matter what size the asteroid is, create some debris
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
}