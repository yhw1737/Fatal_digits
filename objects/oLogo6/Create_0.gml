/// @description 초기화
/*
	 기본적인 속성입니다.
	 draw_sprite_part는 스프라이트의 중심 점을 고려하지 않기 때문에 왼쪽 위 좌표를 잡아줘야 합니다.
*/
width = sprite_width
height = sprite_height
x = (room_width - width) * 0.5
y = (room_height - height) * 0.5

a=0;
image_alpha = 0;