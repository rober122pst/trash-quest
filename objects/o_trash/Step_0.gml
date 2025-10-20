if !grab y += sin(current_time / 200 + int64(id)) * 0.2;
else spd = 0;
speed = spd;
if grab and !tocou {
	audio_play_sound(snd_grab, 5, false, 1, .3);
	tocou = true;
}

if x-sprite_width/2 < -32 or x+sprite_width/2 > room_width+32 {
	instance_destroy();	
}