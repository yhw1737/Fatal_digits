/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
move_by(spd, maxspd);

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (delay > 0)
	delay--;

if (getexp >= maxexp) {
	temp = getexp - maxexp;
	getexp = temp;
	lv++;
	maxexp*=1.5;
}



