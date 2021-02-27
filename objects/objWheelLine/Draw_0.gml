/// @description Insert description here
// You can write your code in this editor
var i,
	r,
	s_col,
	u_col;
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

for (i = 0; i < sno; i += 1) { // This is stupid.
	if (slice_array[i, 7] = noone) { 
		break;
	}
	s_col = make_color_rgb(slice_array[i,2], slice_array[i,3], slice_array[i,4]);
	for (r = slice_angle[i, 0]; r <= slice_angle[i, 1]; r += .1) {
		draw_sprite_ext(sprWheelFillLine, 0, x, y, 1, 1, angle + r, s_col, 1);
	}
}
for (i = 0; i < sno; i += 1){
	if (slice_array[i, 7] = noone) { 
		break;
	}
	uname = slice_array[i,0];
	u_col = make_color_rgb(slice_array[i,5], slice_array[i,6], slice_array[i,7]);
	if (slice_angle[i,1] - slice_angle[i,0] > 10) && (slice_angle[i,1] - slice_angle[i,0] <= 12){ 
	draw_set_font(fntCourier11);
	draw_text_transformed_color(x, y, "          "+uname, 1, 1, angle + (((slice_angle[i,0] + slice_angle[i,1])/2)+90), u_col, u_col, u_col, u_col, 1); 
	}
	if (slice_angle[i,1] - slice_angle[i,0] > 12) && (slice_angle[i,1] - slice_angle[i,0] <= 13){ 
	draw_set_font(fntCourier12);
	draw_text_transformed_color(x, y, "       "+uname, 1, 1, angle + (((slice_angle[i,0] + slice_angle[i,1])/2)+90), u_col, u_col, u_col, u_col, 1); 
	}
	if (slice_angle[i,1] - slice_angle[i,0] > 13) && (slice_angle[i,1] - slice_angle[i,0] <= 14) { 
	draw_set_font(fntCourier13);
	draw_text_transformed_color(x, y, "       "+uname, 1, 1, angle + (((slice_angle[i,0] + slice_angle[i,1])/2)+90), u_col, u_col, u_col, u_col, 1); 
	}
	if (slice_angle[i,1] - slice_angle[i,0] > 14) && (slice_angle[i,1] - slice_angle[i,0] < 20 ) { 
	draw_set_font(fntCourier14);
	draw_text_transformed_color(x, y, "      "+uname, 1, 1, angle + (((slice_angle[i,0] + slice_angle[i,1])/2)+90), u_col, u_col, u_col, u_col, 1); 
	}
	if (slice_angle[i,1] - slice_angle[i,0] >= 20) { 
	draw_set_font(fntCourier15);
	draw_text_transformed_color(x, y, "    "+uname, 1, 1, angle + (((slice_angle[i,0] + slice_angle[i,1])/2)+90), u_col, u_col, u_col, u_col, 1); 
	}
	draw_sprite_ext(sprWheelLine, 0, x, y, 1, 1, angle + slice_angle [i, 1], c_white, 1);
}
draw_sprite_ext(sprite, frame, xPos, yPos, xScale * facing, yScale, angle, color, alpha);

for(i = 0; i < sno; i += 1) {
	if (slice_array[i, 7] = noone) { 
		break;
	}
	if (360 - angle >= (slice_angle[i, 0]) && 360 - angle <= (slice_angle[i, 1])) && is_spinning = 0 && was_spun != 0 {
		draw_set_font(fntCourier32);
		draw_set_halign(fa_middle);
        draw_text_color(room_width/2, 825, "!badseed"+slice_array[i, 0],c_white,c_white,c_white,c_white,1);
    }
}
draw_set_halign(fa_middle);
draw_set_font(fntCourier16);
draw_text_color(1335, 175, "!rigged Seed:"+slice_array[rigged, 0],c_white,c_white,c_white,c_white,1);