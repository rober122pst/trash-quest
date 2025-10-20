max_spd = o_player.max_spd / 2.5;

magnetism = o_player.magnetism / 2;
max_catch = max(int64(o_player.max_catch / 2), 1);
spd_hook_down = max(o_player.spd_hook_down / 2, .02);
spd_hook_up = o_player.spd_hook_up / 2;