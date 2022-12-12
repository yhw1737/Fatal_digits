var r_r = random_range(0.8,1.2);
hp = 100*(1+(floor(min(1,level/20))))*r_r;
maxhp = hp;
image_xscale = 0.25*r_r;
image_yscale = 0.25*r_r;
spd = 90/room_speed;
turn = 8;
event_inherited();