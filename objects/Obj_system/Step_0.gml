if global.abilsel = false {
var xx,yy,pdst,pdir;
pdst = point_distance(Obj_player.x,Obj_player.y,mouse_x,mouse_y);
pdir = point_direction(Obj_player.x,Obj_player.y,mouse_x,mouse_y);
xx = Obj_player.x+lengthdir_x(pdst/5,pdir);
yy = Obj_player.y+lengthdir_y(pdst/5,pdir);
x += (xx - x)/40;
y += (yy - y)/40;
if !instance_exists(Obj_boss01) && instance_number(Oenemy) < 30+diff/10{
var odd = irandom(500-diff);
if odd == 0{
	xx = random(room_width);
	yy = random(room_height);
	while(point_distance(xx,yy,x,y) <= 1200)
	{
		xx = random(room_width);
		yy = random(room_height);
	}
	instance_create_depth(xx,yy,0,Obj_monster);
}
if odd == 1 && Obj_player.level >= 2 && irandom(4) == 0{
	xx = random(room_width);
	yy = random(room_height);
	while(point_distance(xx,yy,x,y) <= 1200)
	{
		xx = random(room_width);
		yy = random(room_height);
	}
	instance_create_depth(xx,yy,0,Obj_monster2);
}
if odd == 2 && Obj_player.level >= 4 && irandom(3) == 0{
	xx = random(room_width);
	yy = random(room_height);
	while(point_distance(xx,yy,x,y) <= 1200)
	{
		xx = random(room_width);
		yy = random(room_height);
	}
	instance_create_depth(xx,yy,0,Obj_monster3);
}
}
if boss > -1 {
	if instance_exists(Oenemy){
		with(Oenemy){
			hp-=maxhp/(room_speed*2);
			hit = 5;
		}
	}
	if boss == 0 {
		if Obj_player.level = 10{
			instance_create_depth(room_width/2,room_height/2,0,Obj_boss01);
		}
		if Obj_player.level = 20{
			instance_create_depth(room_width/2,room_height/2,0,Obj_boss02);
		}
		if Obj_player.level = 30{
			instance_create_depth(room_width/2,room_height/2,0,Obj_boss03);
		}
		instance_destroy(Obj_exp);
	}
	boss--;
}
}