if global.abilsel = false && dead = false{
	if hit = false{
		hp -= 25;
		hit = room_speed*1.5;
	}
	if hp <= 0{
		dead = true;
		audio_stop_sound(Sound2_BGM);
	}
	if other.object_index == Obj_tanmak{
		delay_2 +=2*room_speed;
		delay_3 +=2*room_speed;
		delay_4 +=2*room_speed; 
	}
	else if other.object_index == Obj_tanmak31{
		instance_create_depth(x+random_range(-800,800),y+random_range(-500,500),-200,Object30);
	}
	instance_destroy(other);
}