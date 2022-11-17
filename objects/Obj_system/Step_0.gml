var xx,yy,pdst,pdir;
pdst = point_distance(Obj_player.x,Obj_player.y,mouse_x,mouse_y);
pdir = point_direction(Obj_player.x,Obj_player.y,mouse_x,mouse_y);
xx = Obj_player.x+lengthdir_x(pdst/5,pdir);
yy = Obj_player.y+lengthdir_y(pdst/5,pdir);
x += (xx - x)/20;
y += (yy - y)/20;