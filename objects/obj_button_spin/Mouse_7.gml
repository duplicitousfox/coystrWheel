if objWheelLine.is_spinning = 1 { exit; } else {
    objWheelLine.rotate_spd += irandom_range(objWheelLine.min_value, objWheelLine.max_value); //Add a diferent values to rotate_speed
	objWheelLine.is_spinning = 1;
	objWheelLine.was_spun = 1;
}