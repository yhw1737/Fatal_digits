if Obj_player.dead = false && global.abilsel = false{
	image_angle += angle_difference(point_direction(x,y,Obj_player.x,Obj_player.y), image_angle) / turn;
	direction = image_angle;
	if tazer <= 0{
		speed = spd;
		with(Obj_bullet_5){
			if heyhey = other.id{
				other.speed = other.spd*0.8;
			}
		}
	}
	else {
		tazer--;
	}
	if hp < 0 {
		instance_destroy();
	}
}
else {
	speed = 0;
}