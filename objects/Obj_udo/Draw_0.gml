draw_set_alpha(0.75);
var _array_length = array_length( trail_array );
	if ( _array_length ) {
		draw_primitive_begin( pr_trianglestrip );
		var _trail_width = sprite_width / 2;
		draw_vertex( x + lengthdir_x( _trail_width, direction ), y + lengthdir_y( _trail_width, direction ));
		var _i = _array_length - 1;
		_trail_width /= _array_length;
		repeat( _array_length ) {
			var _trail_x = trail_array[_i][0]; //x
			var _trail_y = trail_array[_i][1]; //y
			var _trail_d = trail_array[_i][2]; //direction
			if ( _i != 0 ) {
				var _trail_do = _trail_d + 90;
				draw_vertex(
					_trail_x + lengthdir_x( _trail_width * _i, _trail_do ),
					_trail_y + lengthdir_y( _trail_width * _i, _trail_do )
				);
				var _trail_dt = _trail_d - 90;
				draw_vertex(
					_trail_x + lengthdir_x( _trail_width * _i, _trail_dt ),
					_trail_y + lengthdir_y( _trail_width * _i, _trail_dt )
				);
			} else {
				draw_vertex( _trail_x, _trail_y );
			};
			_i -= 1;
		};
		draw_primitive_end();
	};
	draw_set_alpha(1);
	draw_self();