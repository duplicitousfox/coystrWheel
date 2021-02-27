/// @description Insert description here
// You can write your code in this editor

anchor_x = 896;
anchor_y = 480;

if objWheelLine.is_spinning == 1 {
	if objWheelLine.rotate_spd >= 45 { rotate_spd = 44; } else { rotate_spd = objWheelLine.rotate_spd; }
	beep += rotate_spd; 
	if beep >= 45 {
		audio_sound_gain(sndMessage, .5, 0);
		audio_play_sound(sndMessage, 1, false);
		beep = 0;
	}
} else { angle = 0; }

phase += angle;

x = anchor_x + radius * dcos(phase);
y = anchor_y - radius * dsin(phase);