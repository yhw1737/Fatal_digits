/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_text(100, 200, string(obj_alphaFE.lv));

if (obj_alphaFE.getexp > 0) {
	instance_create_depth(0, 0, -1, obj_gexp);
}
else {
	instance_destroy(obj_gexp);
}