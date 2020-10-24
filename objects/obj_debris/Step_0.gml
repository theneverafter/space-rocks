// Make the debris fade away and then destroy itself
image_alpha -= 0.01;
if(image_alpha <= 0){
	instance_destroy();
}