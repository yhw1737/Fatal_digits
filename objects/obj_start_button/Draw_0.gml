/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (a == 1) {
	var v;
	for (var i = 0; i < sprite_height; i+=v) {
		v = choose(10,15,25);
		if (irandom(15) = 0) {
			draw_sprite_part(sprite_index, 0, 0, i, sprite_width, v, x + choose(-1,1)*(20+power(max(irandom(100)-95,0),2)), y + i)
		}
		else {
			draw_sprite_part(sprite_index, 0, 0, i, sprite_width, v, x, y + i)
		}
	}
}
else {
	draw_self();
}


