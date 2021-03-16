/// @description Insert description here
// You can write your code in this editor
// Particle effects system
init();

global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);

anchor_x = 896;
anchor_y = 480;
rotate_spd = 0;
beep = 0;
radius = point_distance(anchor_x, anchor_y, x, y);
phase = point_direction(anchor_x, anchor_y, x, y);