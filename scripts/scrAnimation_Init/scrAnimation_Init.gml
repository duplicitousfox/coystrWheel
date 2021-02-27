// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrAnimation_Init(){
	sprite = sprite_index;
	frame = 0;
	xPos = x;
	yPos = y;
	xScale = 1;
	yScale = 1;
	angle = 0;
	color = c_white;
	alpha = 1;
	
	frameSpeed = 1;
	facing = 1;
	
	if ( angle >= 360 ) {
		angle -= 360;
	} else if ( angle < 0 ) {
		angle += 360;
	}
	
}