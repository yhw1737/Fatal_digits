/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (obj_alphaFE.getexp > 0 && obj_alphaFE.maxexp > obj_alphaFE.getexp){
	instance_create_depth(-1, -1, depth, obj_gexp);
}
else 
	instance_destroy(obj_gexp);
