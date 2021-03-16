/// @description Insert description here
// You can write your code in this editor
randomize();

//animation
scrAnimation_Init();
//movement
left = false;
right = false;
up = false;
down = false;
//file stuff
if !file_exists(working_directory + "wheeldata.txt") {
	show_message("wheeldata.txt not found. The program will now exit and open the Companion app to auto-generate the file.");
	game_end();
	if (os_type == os_windows) {
		execute_shell(working_directory + "coystrwheelcompanion.exe", false); 
	}
	exit;
}
var file = file_text_open_read(working_directory + "wheeldata.txt");
sno = 0; // How many slices are on the wheel.
slice_array[50,7] = noone; //2D is user name (string), weight, slice RGB, text RGB (real)
	for (var i = 0; i <= 100; i += 1;) {
		for (var j = 1; j < 8; j += 1;) {
			slice_array[i, j] = file_text_read_real(file);
		} slice_array [i, 0] = file_text_read_string(file);
		file_text_readln(file);
		sno += 1;
		if file_text_eof(file) { break; }
	}
file_text_close(file);
//Wheel Stuff
was_spun = 0;
beep = 0;
angle = irandom_range(0, 360); //randomize which way is up
negative_force = 0.1; //Forces the wheel to stop
is_spinning = false; //If the wheel's spinning, this is turned on.
rotate_spd = 0; //Makes the wheel go wheeeeeee
wheel_weight_total = 0;
rigged = 0;
chosen_one = "";
rigged_one = "";
rigged_center = 0;

for (i = 0; i < sno; i += 1;) {
	if (slice_array[i, 7] = noone) {
		break; 
	}
	wheel_weight_total += slice_array[i, 1]; // The sum of the wheel slice weights
	if (slice_array[rigged, 1] >= slice_array[i, 1]) { // determine which slice is rigged
		rigged = rigged;
	} else {
		rigged = i;
	}
}

//This stuff below basically sets the size of the slices on the wheel.

for(i = 0; i < sno; i += 1) {
	if (slice_array[i, 7] = noone) { 
		break;
	}
	if(i == 0)  {
		slice_angle[i, 0] = 0;
		slice_angle[i, 1] = ((slice_array[i, 1]/wheel_weight_total) * 360);
	} else {
	  slice_angle[i, 0] = slice_angle[(i - 1), 1];
	  slice_angle[i, 1] = slice_angle[i, 0] + ((slice_array[i, 1]/wheel_weight_total) * 360);
	}
	
}

for (i = 0; i < sno; i += 1) { // Bugfix: if the angle fell precisely on a border, it'd show the name of both
	if (slice_array[i, 7] = noone) {break;}
	if (i == 0) { }
	else {
		slice_angle[i, 0] += 0.0001
	}

}

min_value = 50; //Minimum value to add in wheel rotation.
max_value = 200; //Maximum value to add in wheel rotation.

rigged_center = ((slice_angle[rigged, 0] + slice_angle[rigged, 1])/2)