// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	#region Particle Types
	
	var _p = part_type_create();
	var scol =  make_color_rgb(objWheelLine.slice_array[objWheelLine.rigged,5], objWheelLine.slice_array[objWheelLine.rigged,6], objWheelLine.slice_array[objWheelLine.rigged,7]);
	
	part_type_shape(_p, pt_shape_spark);
	part_type_life(_p, 20, 40);
	
	part_type_alpha3(_p, 0, random_range(.7, 1), 0);
	part_type_color3(_p, c_white, scol, c_white);
	part_type_size(_p, 0.7, 1, -0.05, 0);
	
	part_type_speed(_p, .7, 1.2, 0, random_range(.1, .2));
	part_type_direction(_p, 0, 360, 0, 0);
	part_type_gravity(_p, 0.3, 90);
	part_type_orientation(_p, 0, 360, 1, -1, 1);
	
	
	global.ptBasic = _p;
	
	#endregion
}