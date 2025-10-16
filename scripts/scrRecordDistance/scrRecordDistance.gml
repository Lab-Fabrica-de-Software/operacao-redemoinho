function scr_record_distance(){
	if( global.distance > global.furthest_distance){
		global.furthest_distance = global.distance;
		global.furthest_x = x;
		global.furthest_y = y;
	}
}