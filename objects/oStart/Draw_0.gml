if a == 1{
	var v;
	for (var i = 0; i < sprite_height; i+=v) {
		v = choose(10,15,25);
		if irandom(15) = 0{
			draw_sprite_part(sprite_index, 0, 0, i, sprite_width, v, x + choose(-1,1)*(irandom(15)+power(max(irandom(100)-90,0),2)), y + i)
		}
		else {
			draw_sprite_part(sprite_index, 0, 0, i, sprite_width, v, x, y + i)
		}
	}
}
else {
	draw_self();
}