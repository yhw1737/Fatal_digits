var xx,yy,pdst,pdir;
pdst = point_distance(Obj_player.x,Obj_player.y,mouse_x,mouse_y);
pdir = point_direction(Obj_player.x,Obj_player.y,mouse_x,mouse_y);
xx = Obj_player.x+lengthdir_x(pdst/5,pdir);
yy = Obj_player.y+lengthdir_y(pdst/5,pdir);
x += (xx - x)/20;
y += (yy - y)/20;

var odd = irandom(600-diff);
if odd == 0{
	var xx,yy;
	while(point_distance(xx,yy,x,y) <= 1200)
	{
		xx = random(room_width);
		yy = random(room_height);
	}
	instance_create_depth(xx,yy,0,Obj_monster);
}