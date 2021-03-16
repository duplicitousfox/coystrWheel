if y >= 900 { 
	if image_alpha > 0 { image_alpha = image_alpha - .0125 }
	running = 0;
	exit;
	} else if objWheelLine.chosen_one = objWheelLine.rigged_one && objWheelLine.was_spun = 1 && objWheelLine.is_spinning = 0 {
	y = y + 7;
	running = 1;
	if played = 0 {
	audio_play_sound(snd_itemget,1,false);
	played = 1;
	}
}
