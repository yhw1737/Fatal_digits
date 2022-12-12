exp_ = 0;
image_speed = 0;
height = sprite_height;
width = sprite_width;
if !(x > 960 && x < room_width-960 && y > 540 && y < room_height-540){
	instance_destroy();
}