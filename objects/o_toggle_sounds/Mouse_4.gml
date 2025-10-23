audio_play_sound(snd_click, 5, false);
global.options.sounds = !global.options.sounds;
audio_group_set_gain(sfx, int64(global.options.sounds), 1);
image_index = int64(global.options.sounds);