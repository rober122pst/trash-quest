
load_game();
audio_group_load(sfx);

audio_group_set_gain(audiogroup_default, global.options.musics, 1);
audio_group_set_gain(sfx, global.options.sounds, 1);
window_set_fullscreen(global.options.fullscreen);