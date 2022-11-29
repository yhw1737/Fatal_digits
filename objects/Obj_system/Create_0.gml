diff = 0;
//
var xx,yy;
xx = random(room_width);
yy = random(room_height);
while(point_distance(xx,yy,x,y) <= 1400 || point_distance(xx,yy,x,y) >= 1700)
{
	xx = random(room_width);
	yy = random(room_height);
}
instance_create_depth(xx,yy,0,Obj_monster);
//
re = room_speed*10;
alarm[0] = re;
re*=1.5;

global.abilsel = false;