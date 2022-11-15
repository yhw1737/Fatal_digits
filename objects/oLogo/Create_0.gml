/// @description 초기화
/*
	 기본적인 속성입니다.
	 draw_sprite_part는 스프라이트의 중심 점을 고려하지 않기 때문에 왼쪽 위 좌표를 잡아줘야 합니다.
*/
width = sprite_width
height = sprite_height
x = (room_width - width) * 0.5
y = (room_height - height) * 0.2

/*
	 노이즈가 흩뿌려질 경계의 크기입니다.
	 이 예제에서는 노이즈의 정도를 결정할 때, 콜백 스크립트 noise_easer를 이용하여 적절하게 보간을 
	 해줍니다. 이 콜백 스크립트들은 0 ~ 1의 값을 받아서 0 ~ 1의 값을 반환합니다. 일반적으로 out 
	 계열의 보간 스크립트들이 보기에 좋습니다.

	 noise_width: 노이즈 x 좌표의 최대 크기입니다.
	 noise_range: 다음에 노이즈가 그려질 x 좌표의 좌우 범위입니다.
*/
noise_range = 10