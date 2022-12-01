if instance_exists(Oenemy){
	motion_add(point_direction(x,y,instance_nearest(x,y,Oenemy).x,instance_nearest(x,y,Oenemy).y),0.05);
}
array_push( trail_array, [ x, y, round( point_direction( xprevious, yprevious, x, y ) )]);
if ( array_length( trail_array ) > 15 ) {
	array_delete( trail_array, 0, 1 );
};
speed = clamp(speed,0,3);
image_angle = direction;
if global.abilsel {
	speed = 0;
}
else {
	speed = spd;
}