if Obj_player.dead = false && global.abilsel = false {
	image_angle += angle_difference(point_direction(x,y,Obj_player.x,Obj_player.y), image_angle) / turn;
	direction = image_angle;
	speed = spd;
	if hp < 0 {
		instance_destroy();
	}
}
else {
	speed = 0;
}
if hit > 0
	hit--;