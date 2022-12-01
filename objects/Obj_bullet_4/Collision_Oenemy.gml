other.hp-=dmg;
instance_create_depth(x,y,-100,Object1819);
if instance_exists(Oenemy)
with(Oenemy){
	if point_distance(x,y,other.x,other.y) <= 64*(1.8+0.08*Obj_player.level){
		var it = instance_create_depth(x,y,0,Obj_bullet_3);
		it.dmg = other.dmg/2;
	}
}
instance_destroy();