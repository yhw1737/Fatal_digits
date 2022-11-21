/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
rd_x = irandom(1920);
rd_y = irandom(1080);

obj_alphaFE.getexp += 5;
instance_destroy();
instance_create_depth(rd_x, rd_y, depth, object_index);



