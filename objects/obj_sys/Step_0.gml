/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (global.a == 0) {
	instance_create_depth(928, 480, depth, obj_ALPHA);
	instance_destroy(obj_BETA);
	instance_destroy(obj_DELTA);
}
else if (global.a == 1) {
	instance_create_depth(928, 480, depth, obj_BETA);
	instance_destroy(obj_ALPHA);
	instance_destroy(obj_GAMMA);
}
else if (global.a == 2) {
	instance_create_depth(928, 480, depth, obj_GAMMA);
	instance_destroy(obj_BETA);
	instance_destroy(obj_DELTA);
}
else if (global.a == 3) {
	instance_create_depth(928, 480, depth, obj_DELTA);
	instance_destroy(obj_ALPHA);
	instance_destroy(obj_GAMMA);
}