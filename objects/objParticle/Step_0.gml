/// @description Insert description here
// You can write your code in this editor

/* if (mouse_check_button(mb_left)) {
	part_particles_create(global.partSystem, mouse_x, mouse_y, global.ptBasic, 1);
} */

dooba = random_range(50, 225)

var _xx = objWheelLine.x + lengthdir_x(dooba, objWheelLine.rigged_center + objWheelLine.angle + 90);
var _yy = objWheelLine.y + lengthdir_y(dooba, objWheelLine.rigged_center + objWheelLine.angle + 90);

part_particles_create(global.partSystem, _xx, _yy, global.ptBasic, 2);