/// @description Insert description here
// You can write your code in this editor

if objWheelLine.is_spinning == 1 {
	if objWheelLine.rotate_spd >= 45 { rotate_spd = 44; } else { rotate_spd = objWheelLine.rotate_spd; }
	beep += rotate_spd; 
	if beep >= 45 {
		audio_sound_gain(sndMessage, .5, 0);
		audio_sound_pitch(sndMessage, random_range(0.99, 1.01));
		audio_play_sound(sndMessage, 1, false);
		beep = 0;
	}
} else { angle = 0; }

phase += angle;

x = anchor_x + radius * dcos(phase);
y = anchor_y - radius * dsin(phase);

