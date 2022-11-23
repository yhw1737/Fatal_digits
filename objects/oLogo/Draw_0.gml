/// @description 노이즈 그리기
var b;
for (var i = 0; i < height; i+=b) {
	b = choose(3,10,25);
	if irandom(room_speed/3) == 0 {
		draw_sprite_part(sprite_index, 0, 0, i, width, b, x + choose(-1,1)*(irandom(5)+power(max(irandom(100)-95,0),2)), y + i)
	}
	else if irandom(room_speed*8) == 0 {
		draw_sprite(Sprite5, irandom(7), random(room_width), random(room_height));
	}
	else {
		draw_sprite_part(sprite_index, 0, 0, i, width, b, x, y + i)
	}
}