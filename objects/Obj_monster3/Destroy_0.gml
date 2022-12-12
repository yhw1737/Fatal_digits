var it = instance_create_depth(x,y,0,Obj_exp);
var e = choose(1,1,1,1,1,1,1,2,2,2,2,2,3,3,3);
if instance_exists(it){
it.exp_ = e;
it.image_index = e - 1;
}