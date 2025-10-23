audio_play_sound(snd_click, 5, false);
global.options.musics = !global.options.musics;

audio_group_set_gain(audiogroup_default, int64(global.options.musics), 500);
image_index = int64(global.options.musics);