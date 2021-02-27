/// @description Insert description here
// You can write your code in this editor
anchor_x = 896;
anchor_y = 480;
rotate_spd = 0;
beep = 0;
radius = point_distance(anchor_x, anchor_y, x, y);
phase = point_direction(anchor_x, anchor_y, x, y);

scrAnimation_Init();

//movement
left = false;
right = false;
up = false;
down = false;