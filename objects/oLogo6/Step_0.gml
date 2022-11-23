if a = 0{
	image_alpha += 0.6/room_speed;
	if image_alpha >= 1.5 {
		a = 1;
	}
}
else {
	image_alpha -= 0.6/room_speed;
	if image_alpha <= -0.5{
		room_goto_next()
	}
}