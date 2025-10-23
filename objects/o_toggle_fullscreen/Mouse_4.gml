audio_play_sound(snd_click, 5, false);
global.options.fullscreen = !global.options.fullscreen;
window_set_fullscreen(global.options.fullscreen);
image_index = int64(global.options.fullscreen);