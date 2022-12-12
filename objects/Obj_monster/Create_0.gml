var r_r = random_range(0.8,1.2);
hp = 35*(1+(floor(min(1,Obj_player.level/10))))*r_r;
maxhp = hp;
image_xscale = 0.25*r_r;
image_yscale = 0.25*r_r;
spd = 120/room_speed;
turn = 4;
event_inherited();