/// @description Score, lives, game text
if(room == rm_game){
	draw_text(20,20,"SCORE: " + string(score));
	draw_text(20,40,"LIVES: " + string(lives));
}

draw_set_halign(fa_center);

switch(room){
	case rm_start:
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS", 
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 200,
			"Score 1,000 points to win!\n\nUP: move\nLEFT/RIGHT: change direction"
			+"\nDOWN: stop\nSPACE: shoot\n\n>> PRESS ENTER TO START <<"
		);
		break;
	
	case rm_win:
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 150, "YOU WIN!", 
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 250,
			">> PRESS ENTER TO RESTART <<"
		);
		break;
		
	case rm_gameover:
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER", 
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score) +
			"\n\n>> PRESS ENTER TO RESTART <<"
		);
		break;
}

draw_set_halign(fa_left);