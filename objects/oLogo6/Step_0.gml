if a = 0{
	image_alpha += 0.01;
	if image_alpha >= 1.5 {
		a = 1;
	}
}
else {
	image_alpha -=0.01;
	if image_alpha <= -0.5{
		room_goto_next()
	}
}