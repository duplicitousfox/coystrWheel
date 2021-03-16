/// @description Insert description here
// You can write your code in this editor
if is_spinning = 1 or objConfetti.running = 1 { exit; } else {
    rotate_spd += irandom_range(min_value, max_value); //Add a random value to rotate_speed
	is_spinning = 1;
	was_spun = 1;
}